
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum token { ____Placeholder_token } token ;


 scalar_t__ BINOP ;
 int EOI ;

 int LPAREN ;
 int RPAREN ;


 scalar_t__ TOKEN_TYPE (int) ;
 scalar_t__ UNOP ;
 int binop (int) ;
 int filstat (int *,int) ;
 int getn (int *) ;
 int isatty (int ) ;
 scalar_t__ nargc ;
 int oexpr (int) ;
 int parenlevel ;
 scalar_t__ strlen (int *) ;
 int syntax (int *,char*) ;
 int t_lex (scalar_t__) ;
 int ** t_wp ;

__attribute__((used)) static int
primary(enum token n)
{
 enum token nn;
 int res;

 if (n == EOI)
  return 0;
 if (n == LPAREN) {
  parenlevel++;
  if ((nn = t_lex(nargc > 0 ? (--nargc, *++t_wp) : ((void*)0))) ==
      RPAREN) {
   parenlevel--;
   return 0;
  }
  res = oexpr(nn);
  if (t_lex(nargc > 0 ? (--nargc, *++t_wp) : ((void*)0)) != RPAREN)
   syntax(((void*)0), "closing paren expected");
  parenlevel--;
  return res;
 }
 if (TOKEN_TYPE(n) == UNOP) {

  if (--nargc == 0)
   syntax(((void*)0), "argument expected");
  switch (n) {
  case 129:
   return strlen(*++t_wp) == 0;
  case 128:
   return strlen(*++t_wp) != 0;
  case 130:
   return isatty(getn(*++t_wp));
  default:
   return filstat(*++t_wp, n);
  }
 }

 nn = t_lex(nargc > 0 ? t_wp[1] : ((void*)0));
 if (TOKEN_TYPE(nn) == BINOP)
  return binop(nn);

 return strlen(*t_wp) > 0;
}
