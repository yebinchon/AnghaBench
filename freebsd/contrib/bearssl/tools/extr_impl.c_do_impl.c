
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int value; } ;
typedef TYPE_1__ br_config_option ;


 TYPE_1__* br_get_config () ;
 int printf (char*,char*,int ) ;

int
do_impl(int argc, char *argv[])
{
 const br_config_option *opt;

 (void)argc;
 (void)argv;

 for (opt = br_get_config(); opt->name != ((void*)0); opt ++) {
  printf("%-25s %8ld\n", opt->name, opt->value);
 }

 return 0;
}
