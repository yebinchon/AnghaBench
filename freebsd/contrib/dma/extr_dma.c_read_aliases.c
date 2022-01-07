
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aliases; } ;


 scalar_t__ ENOENT ;
 TYPE_1__ config ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int * yyin ;
 scalar_t__ yyparse () ;

__attribute__((used)) static int
read_aliases(void)
{
 yyin = fopen(config.aliases, "r");
 if (yyin == ((void*)0)) {



  if (errno == ENOENT)
   return (0);

  return (-1);
 }
 if (yyparse())
  return (-1);
 fclose(yyin);
 return (0);
}
