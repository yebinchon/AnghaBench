
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int regset ;


 size_t BLKmode ;
 int FIRST_PSEUDO_REGISTER ;
 size_t GET_MODE (int ) ;
 int REGNO (int ) ;
 int SET_REGNO_REG_SET (int ,int) ;
 int gcc_assert (int) ;
 int** hard_regno_nregs ;

__attribute__((used)) static void
mark_reg (rtx reg, void *xset)
{
  regset set = (regset) xset;
  int regno = REGNO (reg);

  gcc_assert (GET_MODE (reg) != BLKmode);

  SET_REGNO_REG_SET (set, regno);
  if (regno < FIRST_PSEUDO_REGISTER)
    {
      int n = hard_regno_nregs[regno][GET_MODE (reg)];
      while (--n > 0)
 SET_REGNO_REG_SET (set, regno + n);
    }
}
