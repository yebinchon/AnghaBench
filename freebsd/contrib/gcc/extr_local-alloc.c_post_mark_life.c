
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HARD_REG_SET ;


 int AND_COMPL_HARD_REG_SET (int ,int ) ;
 int CLEAR_HARD_REG_SET (int ) ;
 int IOR_HARD_REG_SET (int ,int ) ;
 int SET_HARD_REG_BIT (int ,int) ;
 int** hard_regno_nregs ;
 int * regs_live_at ;

__attribute__((used)) static void
post_mark_life (int regno, enum machine_mode mode, int life, int birth,
  int death)
{
  int j = hard_regno_nregs[regno][mode];
  HARD_REG_SET this_reg;

  CLEAR_HARD_REG_SET (this_reg);
  while (--j >= 0)
    SET_HARD_REG_BIT (this_reg, regno + j);

  if (life)
    while (birth < death)
      {
 IOR_HARD_REG_SET (regs_live_at[birth], this_reg);
 birth++;
      }
  else
    while (birth < death)
      {
 AND_COMPL_HARD_REG_SET (regs_live_at[birth], this_reg);
 birth++;
      }
}
