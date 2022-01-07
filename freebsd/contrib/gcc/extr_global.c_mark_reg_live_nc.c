
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int SET_HARD_REG_BIT (int ,int) ;
 int** hard_regno_nregs ;
 int hard_regs_live ;

__attribute__((used)) static void
mark_reg_live_nc (int regno, enum machine_mode mode)
{
  int last = regno + hard_regno_nregs[regno][mode];
  while (regno < last)
    {
      SET_HARD_REG_BIT (hard_regs_live, regno);
      regno++;
    }
}
