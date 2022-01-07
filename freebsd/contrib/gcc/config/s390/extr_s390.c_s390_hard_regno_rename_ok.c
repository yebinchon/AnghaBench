
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ base_reg; } ;


 unsigned int REGNO (scalar_t__) ;
 TYPE_2__* cfun ;

bool
s390_hard_regno_rename_ok (unsigned int old_reg, unsigned int new_reg)
{


  if (cfun->machine->base_reg)
    if (REGNO (cfun->machine->base_reg) == old_reg
 || REGNO (cfun->machine->base_reg) == new_reg)
      return 0;

  return 1;
}
