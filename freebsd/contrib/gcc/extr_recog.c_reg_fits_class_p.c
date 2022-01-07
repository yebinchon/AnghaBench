
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int FIRST_PSEUDO_REGISTER ;
 int NO_REGS ;
 int REGNO (int ) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 int** hard_regno_nregs ;
 int * reg_class_contents ;

int
reg_fits_class_p (rtx operand, enum reg_class cl, int offset,
    enum machine_mode mode)
{
  int regno = REGNO (operand);

  if (cl == NO_REGS)
    return 0;

  if (regno < FIRST_PSEUDO_REGISTER
      && TEST_HARD_REG_BIT (reg_class_contents[(int) cl],
       regno + offset))
    {
      int sr;
      regno += offset;
      for (sr = hard_regno_nregs[regno][mode] - 1;
    sr > 0; sr--)
 if (! TEST_HARD_REG_BIT (reg_class_contents[(int) cl],
     regno + sr))
   break;
      return sr == 0;
    }

  return 0;
}
