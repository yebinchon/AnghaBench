
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {char* str; scalar_t__ tok; size_t val; } ;


 scalar_t__ TOK_TYPE ;
 int abort () ;
 TYPE_1__* keywords ;
 int printf (char*,char*) ;

__attribute__((used)) static void
print_syntax(u_int syntax)
{
 u_int i;

 for (i = 0; keywords[i].str != ((void*)0); i++)
  if (keywords[i].tok == TOK_TYPE &&
      keywords[i].val == syntax) {
   printf(" %s", keywords[i].str);
   return;
 }
 abort();
}
