
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int INTVAL (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ PLUS ;
 int Pmode ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 scalar_t__ general_operand (int ,int ) ;
 scalar_t__ memory_operand (int ,int) ;
 int reload_completed ;

int
indirect_operand (rtx op, enum machine_mode mode)
{

  if (! reload_completed
      && GET_CODE (op) == SUBREG && MEM_P (SUBREG_REG (op)))
    {
      int offset = SUBREG_BYTE (op);
      rtx inner = SUBREG_REG (op);

      if (mode != VOIDmode && GET_MODE (op) != mode)
 return 0;






      return ((offset == 0 && general_operand (XEXP (inner, 0), Pmode))
       || (GET_CODE (XEXP (inner, 0)) == PLUS
    && GET_CODE (XEXP (XEXP (inner, 0), 1)) == CONST_INT
    && INTVAL (XEXP (XEXP (inner, 0), 1)) == -offset
    && general_operand (XEXP (XEXP (inner, 0), 0), Pmode)));
    }

  return (MEM_P (op)
   && memory_operand (op, mode)
   && general_operand (XEXP (op, 0), Pmode));
}
