
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_chain {int dead_or_set; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CLEAR_REGNO_REG_SET (int ,int) ;
 int FIRST_PSEUDO_REGISTER ;
 int SET_REGNO_REG_SET (int *,int) ;
 int * fixed_regs ;
 int** hard_regno_nregs ;
 int live_relevant_regs ;
 scalar_t__* reg_renumber ;

__attribute__((used)) static void
reg_dies (int regno, enum machine_mode mode, struct insn_chain *chain)
{
  if (regno < FIRST_PSEUDO_REGISTER)
    {
      int nregs = hard_regno_nregs[regno][mode];
      while (nregs-- > 0)
 {
   CLEAR_REGNO_REG_SET (live_relevant_regs, regno);
   if (! fixed_regs[regno])
     SET_REGNO_REG_SET (&chain->dead_or_set, regno);
   regno++;
 }
    }
  else
    {
      CLEAR_REGNO_REG_SET (live_relevant_regs, regno);
      if (reg_renumber[regno] >= 0)
 SET_REGNO_REG_SET (&chain->dead_or_set, regno);
    }
}
