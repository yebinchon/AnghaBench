
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union yystype {int name; } ;
typedef int sresult ;
typedef int arith_t ;


 int ARITH_ASS ;
 int ARITH_ASS_MAX ;
 int ARITH_ASS_MIN ;
 char* ARITH_FORMAT_STR ;
 int ARITH_VAR ;
 int DIGITS (int ) ;
 int arith_lookupvarint (int ) ;
 int cond (int,union yystype*,int,int) ;
 int do_binop (int,int ,int ) ;
 int setvar (int ,char*,int ) ;
 int snprintf (char*,int,char*,int ) ;
 int yylex () ;
 union yystype yylval ;

__attribute__((used)) static arith_t assignment(int var, int noeval)
{
 union yystype val = yylval;
 int op = yylex();
 arith_t result;
 char sresult[DIGITS(result) + 1];

 if (var != ARITH_VAR)
  return cond(var, &val, op, noeval);

 if (op != ARITH_ASS && (op < ARITH_ASS_MIN || op >= ARITH_ASS_MAX))
  return cond(var, &val, op, noeval);

 result = assignment(yylex(), noeval);
 if (noeval)
  return result;

 if (op != ARITH_ASS)
  result = do_binop(op - 11, arith_lookupvarint(val.name), result);
 snprintf(sresult, sizeof(sresult), ARITH_FORMAT_STR, result);
 setvar(val.name, sresult, 0);
 return result;
}
