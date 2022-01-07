
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PSEUDO_REGNO_MODE (int) ;
 scalar_t__ REGNO_REG_SET_P (int *,int) ;
 scalar_t__ REG_FREQ (int) ;
 int SET_REGNO_REG_SET (int *,int) ;
 int** hard_regno_nregs ;
 int* reg_renumber ;
 int * spill_add_cost ;
 int * spill_cost ;
 int spilled_pseudos ;

__attribute__((used)) static void
count_spilled_pseudo (int spilled, int spilled_nregs, int reg)
{
  int r = reg_renumber[reg];
  int nregs = hard_regno_nregs[r][PSEUDO_REGNO_MODE (reg)];

  if (REGNO_REG_SET_P (&spilled_pseudos, reg)
      || spilled + spilled_nregs <= r || r + nregs <= spilled)
    return;

  SET_REGNO_REG_SET (&spilled_pseudos, reg);

  spill_add_cost[r] -= REG_FREQ (reg);
  while (nregs-- > 0)
    spill_cost[r + nregs] -= REG_FREQ (reg);
}
