
#!/bin/bash

echo "Iniciando o script"

echo "O diretório atual é o root"

# Pedir as informações do cálculo para o usuário:

def calculate():
  numero_1 = int(input("Insira o primeiro número:"))
  numero_2 = int(input("Insira o segundo número:"))

  operação = input("Insira a operação que deseja realizar (+, -, *, /):")

# Definir as operações que serão executadas:

  if operação == '+':
    print('{} + {} = '.format(numero_1, numero_2))
    print(numero_1 + numero_2)

  elif operação == '-':
    print('{} - {} = '.format(numero_1, numero_2))
    print(numero_1 - numero_2)

  elif operação == '*':
    print('{} * {} = '.format(numero_1, numero_2))
    print(numero_1 * numero_2)

  elif operação == '/':
    print('{} / {} = '.format(numero_1, numero_2))
    print(numero_1 / numero_2)

  else:
    print('Você não digitou uma operação válida.')

# Chamar função calculate() fora da função
calculate()

# Definir função again() para perguntar ao usuário se quer usar a calculadora novamente
def again():
  calc_again = input('''
Você gostaria de usar a calculadora novamente?
Por favor digite S para SIM e N para NÃO:
''')

# Aceitar S ou s:

  if calc_again.upper() == 'S':
    calculate()

# Aceitar N ou n:

  elif calc_again.upper() == 'N':
    print('Obrigado por usar a calculadora.')
  else:
    again()

again()


echo "Finalizando o script"
