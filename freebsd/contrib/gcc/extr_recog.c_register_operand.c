
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ MODE_COMPLEX_FLOAT ;
 scalar_t__ MODE_COMPLEX_INT ;
 scalar_t__ NO_REGS ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REGNO_REG_CLASS (scalar_t__) ;
 scalar_t__ REG_CANNOT_CHANGE_MODE_P (scalar_t__,int,int) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int VOIDmode ;
 int general_operand (int ,int) ;
 int reload_completed ;

int
register_operand (rtx op, enum machine_mode mode)
{
  if (GET_MODE (op) != mode && mode != VOIDmode)
    return 0;

  if (GET_CODE (op) == SUBREG)
    {
      rtx sub = SUBREG_REG (op);







      if (! reload_completed && MEM_P (sub))
 return general_operand (op, mode);
      if (SCALAR_FLOAT_MODE_P (GET_MODE (op))
   && GET_MODE_SIZE (GET_MODE (op)) > GET_MODE_SIZE (GET_MODE (sub)))
 return 0;

      op = sub;
    }



  return (REG_P (op)
   && (REGNO (op) >= FIRST_PSEUDO_REGISTER
       || REGNO_REG_CLASS (REGNO (op)) != NO_REGS));
}
