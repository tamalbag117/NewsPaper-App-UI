import 'dart:convert';

import 'package:news_app/models/article.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/secret/keys.dart';

class News {
  List<Article> articles = List<Article>();

  Future<void> getNewsHeadlines(String country) async {
    String url =
        "https://newsapi.org/v2/everything?q=apple&from=2021-07-24&to=2021-07-24&sortBy=popularity&apiKey=8ec588cc35214f56a291d99025b7eeff";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["description"] != null && element["urlToImage"] != null) {
          Article article = Article();
          article.title = element["title"];
          article.description = element["description"];
          article.url = element["url"];
          article.urlToImage = element["urlToImage"];
          articles.add(article);
        }
      });
    }
  }

  Future<void> getNewsByCategory(String country, String category) async {
    String url =
        "https://newsapi.org/v2/everything?q=apple&from=2021-07-24&to=2021-07-24&sortBy=popularity&apiKey=8ec588cc35214f56a291d99025b7eeff";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData["status"] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["description"] != null && element["urlToImage"] != null) {
          Article article = Article();
          article.title = element["title"];
          article.description = element["description"];
          article.url = element["url"];
          article.urlToImage = element["urlToImage"];
          articles.add(article);
        }
      });
    }
  }
}
