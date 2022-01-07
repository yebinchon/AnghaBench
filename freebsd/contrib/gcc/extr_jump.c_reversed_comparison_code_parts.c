
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CC0_P (scalar_t__) ;
 scalar_t__ COMPARE ;
 scalar_t__ CONST_INT ;

 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ GET_RTX_CLASS (int) ;


 int HONOR_NANS (int) ;
 int LABEL_P (scalar_t__) ;



 scalar_t__ MODE_CC ;


 scalar_t__ REG_P (scalar_t__) ;
 int REVERSE_CONDITION (int,int) ;
 scalar_t__ REVERSIBLE_CC_MODE (int) ;
 scalar_t__ RTX_COMM_COMPARE ;
 scalar_t__ RTX_COMPARE ;
 scalar_t__ SET ;
 int SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;



 int UNKNOWN ;



 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ prev_nonnote_insn (scalar_t__) ;
 int reverse_condition (int) ;
 int reverse_condition_maybe_unordered (int) ;
 scalar_t__ rtx_equal_p (int ,scalar_t__) ;
 scalar_t__ set_of (scalar_t__,scalar_t__) ;

enum rtx_code
reversed_comparison_code_parts (enum rtx_code code, rtx arg0, rtx arg1, rtx insn)
{
  enum machine_mode mode;


  if (GET_RTX_CLASS (code) != RTX_COMPARE
      && GET_RTX_CLASS (code) != RTX_COMM_COMPARE)
    return UNKNOWN;

  mode = GET_MODE (arg0);
  if (mode == VOIDmode)
    mode = GET_MODE (arg1);




  if (GET_MODE_CLASS (mode) == MODE_CC
      && REVERSIBLE_CC_MODE (mode))
    {



      return reverse_condition (code);
    }


  switch (code)
    {
    case 140:
    case 139:
    case 138:
    case 136:
    case 135:
    case 141:



      return reverse_condition (code);
    case 134:
    case 128:
    case 137:
    case 133:


      return reverse_condition_maybe_unordered (code);
    case 129:
    case 130:
    case 131:
    case 132:

      return UNKNOWN;
    default:
      break;
    }

  if (GET_MODE_CLASS (mode) == MODE_CC || CC0_P (arg0))
    {
      rtx prev;




      if (! insn)
 return UNKNOWN;

      for (prev = prev_nonnote_insn (insn);
    prev != 0 && !LABEL_P (prev);
    prev = prev_nonnote_insn (prev))
 {
   rtx set = set_of (arg0, prev);
   if (set && GET_CODE (set) == SET
       && rtx_equal_p (SET_DEST (set), arg0))
     {
       rtx src = SET_SRC (set);

       if (GET_CODE (src) == COMPARE)
  {
    rtx comparison = src;
    arg0 = XEXP (src, 0);
    mode = GET_MODE (arg0);
    if (mode == VOIDmode)
      mode = GET_MODE (XEXP (comparison, 1));
    break;
  }


       if (REG_P (src))
  {
    arg0 = src;
    continue;
  }
     }


   if (set)
     return UNKNOWN;
 }
    }



  if (GET_CODE (arg0) == CONST_INT
      || (GET_MODE (arg0) != VOIDmode
   && GET_MODE_CLASS (mode) != MODE_CC
   && !HONOR_NANS (mode)))
    return reverse_condition (code);

  return UNKNOWN;
}
