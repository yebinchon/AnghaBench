
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union yystype {int dummy; } yystype ;
typedef int arith_t ;


 int ARITH_BINOP_MAX ;
 int ARITH_BINOP_MIN ;
 int arith_prec (int) ;
 int do_binop (int,int ,int ) ;
 scalar_t__ higher_prec (int,int) ;
 int last_token ;
 int primary (int,union yystype*,int,int) ;
 int yylex () ;
 union yystype yylval ;

__attribute__((used)) static arith_t binop2(arith_t a, int op, int precedence, int noeval)
{
 for (;;) {
  union yystype val;
  arith_t b;
  int op2;
  int token;

  token = yylex();
  val = yylval;

  b = primary(token, &val, yylex(), noeval);

  op2 = last_token;
  if (op2 >= ARITH_BINOP_MIN && op2 < ARITH_BINOP_MAX &&
      higher_prec(op2, op)) {
   b = binop2(b, op2, arith_prec(op), noeval);
   op2 = last_token;
  }

  a = noeval ? b : do_binop(op, a, b);

  if (op2 < ARITH_BINOP_MIN || op2 >= ARITH_BINOP_MAX ||
      arith_prec(op2) >= precedence)
   return a;

  op = op2;
 }
}
