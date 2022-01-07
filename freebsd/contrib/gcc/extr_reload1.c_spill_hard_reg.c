
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRST_PSEUDO_REGISTER ;
 size_t PSEUDO_REGNO_MODE (int) ;
 int SET_HARD_REG_BIT (int ,unsigned int) ;
 int SET_REGNO_REG_SET (int *,int) ;
 int bad_spill_regs_global ;
 unsigned int** hard_regno_nregs ;
 int max_regno ;
 scalar_t__* reg_renumber ;
 int* regs_ever_live ;
 int spilled_pseudos ;

__attribute__((used)) static void
spill_hard_reg (unsigned int regno, int cant_eliminate)
{
  int i;

  if (cant_eliminate)
    {
      SET_HARD_REG_BIT (bad_spill_regs_global, regno);
      regs_ever_live[regno] = 1;
    }




  for (i = FIRST_PSEUDO_REGISTER; i < max_regno; i++)
    if (reg_renumber[i] >= 0
 && (unsigned int) reg_renumber[i] <= regno
 && ((unsigned int) reg_renumber[i]
     + hard_regno_nregs[(unsigned int) reg_renumber[i]]
         [PSEUDO_REGNO_MODE (i)]
     > regno))
      SET_REGNO_REG_SET (&spilled_pseudos, i);
}
