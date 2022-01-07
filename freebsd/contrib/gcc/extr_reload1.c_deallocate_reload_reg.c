
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int when_needed; int opnum; scalar_t__ reg_rtx; } ;


 int clear_reload_reg_in_use (int,int ,int ,int ) ;
 int* reload_spill_index ;
 TYPE_1__* rld ;
 scalar_t__* spill_reg_order ;
 int true_regnum (scalar_t__) ;

void
deallocate_reload_reg (int r)
{
  int regno;

  if (! rld[r].reg_rtx)
    return;
  regno = true_regnum (rld[r].reg_rtx);
  rld[r].reg_rtx = 0;
  if (spill_reg_order[regno] >= 0)
    clear_reload_reg_in_use (regno, rld[r].opnum, rld[r].when_needed,
        rld[r].mode);
  reload_spill_index[r] = -1;
}
