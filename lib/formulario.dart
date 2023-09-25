import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  int selectedRadio = 0;
  bool switchValue = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Página de Formulário', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Preencha o formulário:',
              style: TextStyle(fontSize: 18),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              title: Text('Opção 1'),
              value: isChecked1,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked1 = newValue!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Opção 2'),
              value: isChecked2,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked2 = newValue!;
                });
              },
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: selectedRadio,
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedRadio = newValue!;
                    });
                  },
                ),
                Text('Radio 1'),
                Radio(
                  value: 2,
                  groupValue: selectedRadio,
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedRadio = newValue!;
                    });
                  },
                ),
                Text('Radio 2'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Text('Switch: '),
                Switch(
                  value: switchValue,
                  onChanged: (bool newValue) {
                    setState(() {
                      switchValue = newValue;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Slider(
              value: sliderValue,
              onChanged: (double newValue) {
                setState(() {
                  sliderValue = newValue;
                });
              },
              min: 0,
              max: 100,
              divisions: 10,
              label: sliderValue.toStringAsFixed(2),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Enviar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
