
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tok { ____Placeholder_tok } tok ;


 int abort () ;
 int saved_token ;

__attribute__((used)) static void
pushback(enum tok tok)
{

 if (saved_token != -1)
  abort();
 saved_token = tok;
}
