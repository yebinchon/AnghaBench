
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int regset ;


 int FIRST_PSEUDO_REGISTER ;
 size_t GET_MODE (int ) ;
 int REGNO (int ) ;
 scalar_t__ REGNO_REG_SET_P (int ,int) ;
 scalar_t__ REG_P (int ) ;
 int** hard_regno_nregs ;

__attribute__((used)) static int
mentions_nonequal_regs (rtx *x, void *data)
{
  regset nonequal = (regset) data;
  if (REG_P (*x))
    {
      int regno;

      regno = REGNO (*x);
      if (REGNO_REG_SET_P (nonequal, regno))
 return 1;
      if (regno < FIRST_PSEUDO_REGISTER)
 {
   int n = hard_regno_nregs[regno][GET_MODE (*x)];
   while (--n > 0)
     if (REGNO_REG_SET_P (nonequal, regno + n))
       return 1;
 }
    }
  return 0;
}
