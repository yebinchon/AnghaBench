
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ CONST_INT ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ INTVAL (int ) ;
 scalar_t__ LEGITIMATE_CONSTANT_P (int ) ;
 scalar_t__ LEGITIMATE_PIC_OPERAND_P (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ MODE_INT ;
 scalar_t__ MODE_PARTIAL_INT ;
 scalar_t__ NO_REGS ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REGNO_REG_CLASS (scalar_t__) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 scalar_t__ VOIDmode ;
 int flag_pic ;
 int general_operand (int ,int) ;
 int reload_completed ;
 scalar_t__ trunc_int_for_mode (scalar_t__,int) ;

int
nonmemory_operand (rtx op, enum machine_mode mode)
{
  if (CONSTANT_P (op))
    {


      if (GET_MODE (op) == VOIDmode && mode != VOIDmode
   && GET_MODE_CLASS (mode) != MODE_INT
   && GET_MODE_CLASS (mode) != MODE_PARTIAL_INT)
 return 0;

      if (GET_CODE (op) == CONST_INT
   && mode != VOIDmode
   && trunc_int_for_mode (INTVAL (op), mode) != INTVAL (op))
 return 0;

      return ((GET_MODE (op) == VOIDmode || GET_MODE (op) == mode
        || mode == VOIDmode)
       && (! flag_pic || LEGITIMATE_PIC_OPERAND_P (op))
       && LEGITIMATE_CONSTANT_P (op));
    }

  if (GET_MODE (op) != mode && mode != VOIDmode)
    return 0;

  if (GET_CODE (op) == SUBREG)
    {






      if (! reload_completed && MEM_P (SUBREG_REG (op)))
 return general_operand (op, mode);
      op = SUBREG_REG (op);
    }



  return (REG_P (op)
   && (REGNO (op) >= FIRST_PSEUDO_REGISTER
       || REGNO_REG_CLASS (REGNO (op)) != NO_REGS));
}
