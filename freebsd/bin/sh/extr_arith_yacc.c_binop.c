
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union yystype {int dummy; } yystype ;
typedef int arith_t ;


 int ARITH_BINOP_MAX ;
 int ARITH_BINOP_MIN ;
 int ARITH_MAX_PREC ;
 int binop2 (int ,int,int ,int) ;
 int last_token ;
 int primary (int,union yystype*,int,int) ;

__attribute__((used)) static arith_t binop(int token, union yystype *val, int op, int noeval)
{
 arith_t a = primary(token, val, op, noeval);

 op = last_token;
 if (op < ARITH_BINOP_MIN || op >= ARITH_BINOP_MAX)
  return a;

 return binop2(a, op, ARITH_MAX_PREC, noeval);
}
