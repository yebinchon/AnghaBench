
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum token { ____Placeholder_token } token ;


 int UNOT ;
 scalar_t__ nargc ;
 int primary (int) ;
 int t_lex (scalar_t__) ;
 int * t_wp ;

__attribute__((used)) static int
nexpr(enum token n)
{
 if (n == UNOT)
  return !nexpr(t_lex(nargc > 0 ? (--nargc, *++t_wp) : ((void*)0)));
 return primary(n);
}
