
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ CONST_INT ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 scalar_t__ INTVAL (int ) ;
 scalar_t__ LEGITIMATE_CONSTANT_P (int ) ;
 scalar_t__ LEGITIMATE_PIC_OPERAND_P (int ) ;
 int MEM ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ MEM_VOLATILE_P (int ) ;
 scalar_t__ MODE_INT ;
 scalar_t__ MODE_PARTIAL_INT ;
 scalar_t__ NO_REGS ;
 int REG ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REGNO_REG_CLASS (scalar_t__) ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 int SUBREG ;
 scalar_t__ SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int flag_pic ;
 scalar_t__ memory_address_p (int,int ) ;
 int reload_completed ;
 scalar_t__ trunc_int_for_mode (scalar_t__,int) ;
 int volatile_ok ;

int
general_operand (rtx op, enum machine_mode mode)
{
  enum rtx_code code = GET_CODE (op);

  if (mode == VOIDmode)
    mode = GET_MODE (op);



  if (GET_MODE (op) == VOIDmode && mode != VOIDmode
      && GET_MODE_CLASS (mode) != MODE_INT
      && GET_MODE_CLASS (mode) != MODE_PARTIAL_INT)
    return 0;

  if (GET_CODE (op) == CONST_INT
      && mode != VOIDmode
      && trunc_int_for_mode (INTVAL (op), mode) != INTVAL (op))
    return 0;

  if (CONSTANT_P (op))
    return ((GET_MODE (op) == VOIDmode || GET_MODE (op) == mode
      || mode == VOIDmode)
     && (! flag_pic || LEGITIMATE_PIC_OPERAND_P (op))
     && LEGITIMATE_CONSTANT_P (op));




  if (GET_MODE (op) != mode)
    return 0;

  if (code == SUBREG)
    {
      rtx sub = SUBREG_REG (op);
      if (!reload_completed && SUBREG_BYTE (op) != 0
   && MEM_P (sub))
 return 0;



      if (SCALAR_FLOAT_MODE_P (GET_MODE (op))
   && GET_MODE_SIZE (GET_MODE (op)) > GET_MODE_SIZE (GET_MODE (sub)))
 return 0;

      op = sub;
      code = GET_CODE (op);
    }

  if (code == REG)

    return (REGNO (op) >= FIRST_PSEUDO_REGISTER
     || REGNO_REG_CLASS (REGNO (op)) != NO_REGS);

  if (code == MEM)
    {
      rtx y = XEXP (op, 0);

      if (! volatile_ok && MEM_VOLATILE_P (op))
 return 0;


      if (memory_address_p (GET_MODE (op), y))
 return 1;
    }

  return 0;
}
