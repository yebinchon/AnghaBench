
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char option; int help_text; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EXIT_FAILURE ;
 int info (char*,...) ;
 TYPE_1__* menu ;

__attribute__((used)) static int show_help(void)
{
 unsigned int i;
 char parameters[ARRAY_SIZE(menu) + 1];

 for (i = 0; i < ARRAY_SIZE(menu); i++)
  parameters[i] = menu[i].option;

 parameters[ARRAY_SIZE(menu)] = '\0';

 info("usage: ar9170user -[%s]\n", parameters);

 for (i = 0; i < ARRAY_SIZE(menu); i++)
  info("\t-%c\t%s\n", menu[i].option, menu[i].help_text);

 return EXIT_FAILURE;
}
