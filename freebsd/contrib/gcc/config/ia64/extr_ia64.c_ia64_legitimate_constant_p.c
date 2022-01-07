
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;




 int CONST_DOUBLE_OK_FOR_G (int ) ;


 int const GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;
 int INTVAL (int ) ;

 int MODE_VECTOR_INT ;
 int const PLUS ;

 int V2SFmode ;
 int VOIDmode ;
 int XEXP (int ,int) ;
 int aligned_offset_symbol_operand (int ,int) ;
 int any_offset_symbol_operand (int ,int) ;
 int function_operand (int ,int) ;
 int ia64_extra_constraint (int ,char) ;
 int tls_symbolic_operand_type (int ) ;

bool
ia64_legitimate_constant_p (rtx x)
{
  switch (GET_CODE (x))
    {
    case 131:
    case 129:
      return 1;

    case 132:
      if (GET_MODE (x) == VOIDmode)
 return 1;
      return CONST_DOUBLE_OK_FOR_G (x);

    case 133:
    case 128:



      if (tls_symbolic_operand_type (x) == 0)
 {
   HOST_WIDE_INT addend = 0;
   rtx op = x;

   if (GET_CODE (op) == 133
       && GET_CODE (XEXP (op, 0)) == PLUS
       && GET_CODE (XEXP (XEXP (op, 0), 1)) == 131)
     {
       addend = INTVAL (XEXP (XEXP (op, 0), 1));
       op = XEXP (XEXP (op, 0), 0);
     }

          if (any_offset_symbol_operand (op, GET_MODE (op))
              || function_operand (op, GET_MODE (op)))
            return 1;
   if (aligned_offset_symbol_operand (op, GET_MODE (op)))
     return (addend & 0x3fff) == 0;
   return 0;
 }
      return 0;

    case 130:
      {
 enum machine_mode mode = GET_MODE (x);

 if (mode == V2SFmode)
   return ia64_extra_constraint (x, 'Y');

 return (GET_MODE_CLASS (mode) == MODE_VECTOR_INT
  && GET_MODE_SIZE (mode) <= 8);
      }

    default:
      return 0;
    }
}
