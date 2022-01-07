
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value_data {unsigned int max_value_regs; TYPE_1__* e; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int mode; } ;


 unsigned int** hard_regno_nregs ;

__attribute__((used)) static void
set_value_regno (unsigned int regno, enum machine_mode mode,
   struct value_data *vd)
{
  unsigned int nregs;

  vd->e[regno].mode = mode;

  nregs = hard_regno_nregs[regno][mode];
  if (nregs > vd->max_value_regs)
    vd->max_value_regs = nregs;
}
