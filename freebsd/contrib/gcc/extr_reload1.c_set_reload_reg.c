
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ in; scalar_t__ out; scalar_t__ reg_rtx; int when_needed; int opnum; } ;


 int GET_MODE (scalar_t__) ;
 scalar_t__ HARD_REGNO_MODE_OK (int,int) ;
 int VOIDmode ;
 scalar_t__ gen_rtx_REG (scalar_t__,int ) ;
 int last_spill_reg ;
 int mark_reload_reg_in_use (int ,int ,int ,int) ;
 int * reload_spill_index ;
 TYPE_1__* rld ;
 scalar_t__* spill_reg_rtx ;
 int * spill_regs ;
 int true_regnum (scalar_t__) ;

__attribute__((used)) static int
set_reload_reg (int i, int r)
{
  int regno;
  rtx reg = spill_reg_rtx[i];

  if (reg == 0 || GET_MODE (reg) != rld[r].mode)
    spill_reg_rtx[i] = reg
      = gen_rtx_REG (rld[r].mode, spill_regs[i]);

  regno = true_regnum (reg);



  if (HARD_REGNO_MODE_OK (regno, rld[r].mode))
    {
      enum machine_mode test_mode = VOIDmode;
      if (rld[r].in)
 test_mode = GET_MODE (rld[r].in);






      if (! (rld[r].in != 0 && test_mode != VOIDmode
      && ! HARD_REGNO_MODE_OK (regno, test_mode)))
 if (! (rld[r].out != 0
        && ! HARD_REGNO_MODE_OK (regno, GET_MODE (rld[r].out))))
   {

     last_spill_reg = i;



     mark_reload_reg_in_use (spill_regs[i], rld[r].opnum,
        rld[r].when_needed, rld[r].mode);

     rld[r].reg_rtx = reg;
     reload_spill_index[r] = spill_regs[i];
     return 1;
   }
    }
  return 0;
}
