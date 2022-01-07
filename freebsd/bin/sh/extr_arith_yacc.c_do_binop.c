
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int arith_t ;
 int ARITH_MIN ;





 int CHAR_BIT ;
 int yyerror (char*) ;

__attribute__((used)) static arith_t do_binop(int op, arith_t a, arith_t b)
{

 switch (op) {
 default:
 case 130:
 case 139:
  if (!b)
   yyerror("division by zero");
  if (a == ARITH_MIN && b == -1)
   yyerror("divide error");
  return op == 130 ? a % b : a / b;
 case 132:
  return (uintmax_t)a * (uintmax_t)b;
 case 143:
  return (uintmax_t)a + (uintmax_t)b;
 case 128:
  return (uintmax_t)a - (uintmax_t)b;
 case 134:
  return (uintmax_t)a << (b & (sizeof(uintmax_t) * CHAR_BIT - 1));
 case 129:
  return a >> (b & (sizeof(uintmax_t) * CHAR_BIT - 1));
 case 133:
  return a < b;
 case 135:
  return a <= b;
 case 136:
  return a > b;
 case 137:
  return a >= b;
 case 138:
  return a == b;
 case 131:
  return a != b;
 case 142:
  return a & b;
 case 140:
  return a ^ b;
 case 141:
  return a | b;
 }
}
