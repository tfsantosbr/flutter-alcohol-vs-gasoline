import 'package:alcohol_vs_gasoline/widgets/input.widget.dart';
import 'package:alcohol_vs_gasoline/widgets/loading-button.widget.dart';
import 'package:alcohol_vs_gasoline/widgets/logo.widget.dart';
import 'package:alcohol_vs_gasoline/widgets/submit-form.dart';
import 'package:alcohol_vs_gasoline/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcoholCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Success(
            result: "Compensa utilizar x",
            reset: () {},
          ),
          SubmitForm(
              gasCtrl: _gasCtrl,
              alcoholCtrl: _alcoholCtrl,
              busy: false,
              submitFunc: () {})
        ],
      ),
    );
  }
}
