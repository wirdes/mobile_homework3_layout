// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  Padding IconButtonBox({icon, label}) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        right: 25,
      ),
      child: Column(
        children: [
          IconButton(
            icon: Icon(icon, color: Colors.blue),
            onPressed: () {},
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Image.network(
                    'https://sorubankasi.net/img/paragrafresim/da3e873a43ce573b111d96ee08ae9092.jpg'),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Kız Kalesi',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Mersin, Türkiye',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          )
                        ],
                      ),
                      IconBox(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButtonBox(icon: Icons.call, label: 'Ara'),
                      IconButtonBox(icon: Icons.near_me, label: 'Yol Tarifi'),
                      IconButtonBox(icon: Icons.share, label: 'Paylaş')
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '   Kız kalesi Efsanesi Korikos’ta yaşayan Krallardan biri, bir kız çocuğu olsun diye gece gündüz Tanrıya yakarmaktadır. Sonunda dileği yerine gelir ve kız büyüdükçe güzelliği ve yardımseverliği ile herkesin sevgisini kazanır. Günlerden bir gün kente bir falcı gelir. Kral onu saraya çağırtır, kızının geleceğini öğrenmek ister. Falcı prensesin eline bakınca irkilir ama bir şey söylemez. Kral zorlayınca, "Kralım, kızınızı bir yılan sokacak, bu yazgıyı hiçbir şey bozamayacak, siz dahi engel olamayacaksınız." deyip oradan ayrılır. Kral, kıza bir şey söylemez ama düşüncelere dalar. Sonunda kıyıya yakın küçük bir adacık üzerinde, ak taşlardan bir kale yaptırmaya karar vererek kaleyi yaptırır ve kızını buraya kapatır. Olan biteni bilmediğinden kızı üzülmekte, günden güne eriyip gitmektedir. Günün birinde saraydan kaleye gönderilen bir üzüm sepetinin içinden çıkan bir yılan kızı sokar ve öldürür.',
                      style: TextStyle(fontSize: 13),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class IconBox extends StatefulWidget {
  const IconBox({
    Key? key,
  }) : super(key: key);

  @override
  IconBoxState createState() => IconBoxState();
}

class IconBoxState extends State<IconBox> {
  bool isPressed = false;

  void isPressedState() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.star),
          color: isPressed ? Colors.red : Colors.grey,
          onPressed: isPressedState,
        ),
        SizedBox(
          width: 45,
          child: Text(
            isPressed ? '41' : '40',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
