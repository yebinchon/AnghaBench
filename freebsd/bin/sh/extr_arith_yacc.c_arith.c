
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackmark {int dummy; } ;
typedef int arith_t ;


 char const* arith_buf ;
 char const* arith_startbuf ;
 int assignment (int ,int ) ;
 scalar_t__ last_token ;
 int popstackmark (struct stackmark*) ;
 int setstackmark (struct stackmark*) ;
 int yyerror (char*) ;
 int yylex () ;

arith_t arith(const char *s)
{
 struct stackmark smark;
 arith_t result;

 setstackmark(&smark);

 arith_buf = arith_startbuf = s;

 result = assignment(yylex(), 0);

 if (last_token)
  yyerror("expecting EOF");

 popstackmark(&smark);

 return result;
}
