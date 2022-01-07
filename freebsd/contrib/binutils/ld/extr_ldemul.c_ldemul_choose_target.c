
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* choose_target ) (int,char**) ;} ;


 TYPE_1__* ld_emulation ;
 char* stub1 (int,char**) ;

char *
ldemul_choose_target (int argc, char **argv)
{
  return ld_emulation->choose_target (argc, argv);
}
