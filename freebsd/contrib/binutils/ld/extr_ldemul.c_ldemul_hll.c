
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* hll ) (char*) ;} ;


 TYPE_1__* ld_emulation ;
 int stub1 (char*) ;

void
ldemul_hll (char *name)
{
  ld_emulation->hll (name);
}
