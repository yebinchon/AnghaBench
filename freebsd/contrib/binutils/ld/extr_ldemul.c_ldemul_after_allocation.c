
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* after_allocation ) () ;} ;


 TYPE_1__* ld_emulation ;
 int stub1 () ;

void
ldemul_after_allocation (void)
{
  ld_emulation->after_allocation ();
}
