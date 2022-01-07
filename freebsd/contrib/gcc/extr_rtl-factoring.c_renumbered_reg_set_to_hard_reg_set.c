
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regset ;
typedef int HARD_REG_SET ;


 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ REGNO_REG_SET_P (int ,int) ;
 int REG_SET_TO_HARD_REG_SET (int ,int ) ;
 int SET_HARD_REG_BIT (int ,scalar_t__) ;
 int max_regno ;
 scalar_t__* reg_renumber ;

__attribute__((used)) static void
renumbered_reg_set_to_hard_reg_set (HARD_REG_SET * hregs, regset regs)
{
  int r;

  REG_SET_TO_HARD_REG_SET (*hregs, regs);
  for (r = FIRST_PSEUDO_REGISTER; r < max_regno; r++)
    if (REGNO_REG_SET_P (regs, r) && reg_renumber[r] >= 0)
      SET_HARD_REG_BIT (*hregs, reg_renumber[r]);
}
