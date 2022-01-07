
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum token { ____Placeholder_token } token ;


 scalar_t__ BOR ;
 int aexpr (int) ;
 scalar_t__ nargc ;
 scalar_t__ t_lex (scalar_t__) ;
 int * t_wp ;

__attribute__((used)) static int
oexpr(enum token n)
{
 int res;

 res = aexpr(n);
 if (t_lex(nargc > 0 ? (--nargc, *++t_wp) : ((void*)0)) == BOR)
  return oexpr(t_lex(nargc > 0 ? (--nargc, *++t_wp) : ((void*)0))) ||
      res;
 t_wp--;
 nargc++;
 return res;
}
