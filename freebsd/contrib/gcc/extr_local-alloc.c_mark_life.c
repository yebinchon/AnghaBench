
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CLEAR_HARD_REG_BIT (int ,int) ;
 int SET_HARD_REG_BIT (int ,int) ;
 int** hard_regno_nregs ;
 int regs_live ;

__attribute__((used)) static void
mark_life (int regno, enum machine_mode mode, int life)
{
  int j = hard_regno_nregs[regno][mode];
  if (life)
    while (--j >= 0)
      SET_HARD_REG_BIT (regs_live, regno + j);
  else
    while (--j >= 0)
      CLEAR_HARD_REG_BIT (regs_live, regno + j);
}
