
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum token { ____Placeholder_token } token ;


 scalar_t__ BAND ;
 scalar_t__ nargc ;
 int nexpr (int) ;
 scalar_t__ t_lex (scalar_t__) ;
 int * t_wp ;

__attribute__((used)) static int
aexpr(enum token n)
{
 int res;

 res = nexpr(n);
 if (t_lex(nargc > 0 ? (--nargc, *++t_wp) : ((void*)0)) == BAND)
  return aexpr(t_lex(nargc > 0 ? (--nargc, *++t_wp) : ((void*)0))) &&
      res;
 t_wp--;
 nargc++;
 return res;
}
