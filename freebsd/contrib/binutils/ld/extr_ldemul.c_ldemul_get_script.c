
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* get_script ) (int*) ;} ;


 TYPE_1__* ld_emulation ;
 char* stub1 (int*) ;

char *
ldemul_get_script (int *isfile)
{
  return ld_emulation->get_script (isfile);
}
