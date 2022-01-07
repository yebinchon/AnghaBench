
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PSEUDO_REGNO_MODE (int) ;
 scalar_t__ REGNO_REG_SET_P (int *,int) ;
 int REG_FREQ (int) ;
 int SET_REGNO_REG_SET (int *,int) ;
 int gcc_assert (int) ;
 int** hard_regno_nregs ;
 int pseudos_counted ;
 int* reg_renumber ;
 int* spill_add_cost ;
 int* spill_cost ;
 int spilled_pseudos ;

__attribute__((used)) static void
count_pseudo (int reg)
{
  int freq = REG_FREQ (reg);
  int r = reg_renumber[reg];
  int nregs;

  if (REGNO_REG_SET_P (&pseudos_counted, reg)
      || REGNO_REG_SET_P (&spilled_pseudos, reg))
    return;

  SET_REGNO_REG_SET (&pseudos_counted, reg);

  gcc_assert (r >= 0);

  spill_add_cost[r] += freq;

  nregs = hard_regno_nregs[r][PSEUDO_REGNO_MODE (reg)];
  while (nregs-- > 0)
    spill_cost[r + nregs] += freq;
}
