
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int regset ;


 int CLEAR_REGNO_REG_SET (int ,unsigned int) ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 size_t GET_MODE (int ) ;
 unsigned int REGNO (int ) ;
 int REGNO_REG_SET_P (int ,unsigned int) ;
 int SET_REGNO_REG_SET (int ,unsigned int) ;
 int gcc_assert (int) ;
 int** hard_regno_nregs ;
 int reload_completed ;

__attribute__((used)) static int
assign_reg_reg_set (regset set, rtx reg, int value)
{
  unsigned regno = REGNO (reg);
  int nregs, i, old;

  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      gcc_assert (!reload_completed);
      nregs = 1;
    }
  else
    nregs = hard_regno_nregs[regno][GET_MODE (reg)];
  for (old = 0, i = nregs; --i >= 0; regno++)
    {
      if ((value != 0) == REGNO_REG_SET_P (set, regno))
 continue;
      if (value)
 old++, SET_REGNO_REG_SET (set, regno);
      else
 old--, CLEAR_REGNO_REG_SET (set, regno);
    }
  return old;
}
