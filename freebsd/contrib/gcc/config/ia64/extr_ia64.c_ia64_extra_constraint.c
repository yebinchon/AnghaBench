
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST0_RTX (int ) ;
 int CONST_INT ;
 int CONST_VECTOR ;
 int DImode ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_CLASS (int ) ;
 int GET_RTX_CLASS (int ) ;
 int INTVAL (int ) ;
 int MEM ;
 int MEM_VOLATILE_P (int ) ;
 int MODE_VECTOR_INT ;
 int RTX_AUTOINC ;
 int V2SFmode ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int ia64_const_double_ok_for_letter_p (int ,char) ;
 int ia64_const_ok_for_letter_p (int,char) ;
 int memory_operand (int ,int ) ;
 int reload_in_progress ;
 int simplify_subreg (int ,int ,int ,int ) ;
 int small_addr_symbolic_operand (int ,int ) ;

bool
ia64_extra_constraint (rtx value, char c)
{
  switch (c)
    {
    case 'Q':

      return memory_operand(value, VOIDmode) && !MEM_VOLATILE_P (value);

    case 'R':

      return (GET_CODE (value) == CONST_INT
       && INTVAL (value) >= 1 && INTVAL (value) <= 4);

    case 'S':

      return (GET_CODE (value) == MEM
       && GET_RTX_CLASS (GET_CODE (XEXP (value, 0))) != RTX_AUTOINC
       && (reload_in_progress || memory_operand (value, VOIDmode)));

    case 'T':

      return small_addr_symbolic_operand (value, VOIDmode);

    case 'U':

      return value == CONST0_RTX (GET_MODE (value));

    case 'W':


      if (GET_CODE (value) == CONST_VECTOR
   && GET_MODE_CLASS (GET_MODE (value)) == MODE_VECTOR_INT)
 {
   value = simplify_subreg (DImode, value, GET_MODE (value), 0);
   return ia64_const_ok_for_letter_p (INTVAL (value), 'J');
 }
      return 0;

    case 'Y':

      return
 (GET_CODE (value) == CONST_VECTOR
  && GET_MODE (value) == V2SFmode
  && ia64_const_double_ok_for_letter_p (XVECEXP (value, 0, 0), 'G')
  && ia64_const_double_ok_for_letter_p (XVECEXP (value, 0, 1), 'G'));

    default:
      return 0;
    }
}
