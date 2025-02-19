
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {scalar_t__ exp; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ARITHMETIC_P (scalar_t__) ;
 scalar_t__ ASHIFT ;
 int ASHIFTRT ;
 scalar_t__ CONST0_RTX (int) ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 int DIV ;
 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 int HASH (scalar_t__,int) ;
 scalar_t__ INTVAL (scalar_t__) ;
 int LSHIFTRT ;
 int MOD ;
 scalar_t__ NULL_RTX ;
 scalar_t__ REG_P (scalar_t__) ;
 int ROTATE ;
 int ROTATERT ;
 int SIGN_EXTEND ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 int UDIV ;
 int UMOD ;
 scalar_t__ UNARY_P (scalar_t__) ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int ZERO_EXTEND ;
 scalar_t__ copy_rtx (scalar_t__) ;
 scalar_t__ equiv_constant (scalar_t__) ;
 scalar_t__ exp_equiv_p (scalar_t__,scalar_t__,int,int) ;
 scalar_t__ fold_rtx (scalar_t__,scalar_t__) ;
 scalar_t__ gen_lowpart_common (int,scalar_t__) ;
 struct table_elt* lookup (scalar_t__,int ,int) ;
 scalar_t__ lookup_as_function (scalar_t__,scalar_t__) ;
 scalar_t__ simplify_binary_operation (int,int,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_subreg (int,scalar_t__,int,int ) ;
 scalar_t__ simplify_unary_operation (int,int,scalar_t__,int) ;
 scalar_t__ subreg_lowpart_p (scalar_t__) ;
 scalar_t__ subreg_lsb (scalar_t__) ;

__attribute__((used)) static rtx
fold_rtx_subreg (rtx x, rtx insn)
{
  enum machine_mode mode = GET_MODE (x);
  rtx folded_arg0;
  rtx const_arg0;
  rtx new;


  if ((new = lookup_as_function (x, CONST_INT)) != 0
      || (new = lookup_as_function (x, CONST_DOUBLE)) != 0)
    return new;
  if (GET_MODE_SIZE (mode) > GET_MODE_SIZE (GET_MODE (SUBREG_REG (x))))
    {
      enum machine_mode imode = GET_MODE (SUBREG_REG (x));
      struct table_elt *elt;

      if (GET_MODE_SIZE (mode) <= UNITS_PER_WORD
   && GET_MODE_SIZE (imode) <= UNITS_PER_WORD
   && (elt = lookup (SUBREG_REG (x), HASH (SUBREG_REG (x), imode),
       imode)) != 0)
 for (elt = elt->first_same_value; elt; elt = elt->next_same_value)
   {
     if (CONSTANT_P (elt->exp)
  && GET_MODE (elt->exp) == VOIDmode)
       return elt->exp;

     if (GET_CODE (elt->exp) == SUBREG
  && GET_MODE (SUBREG_REG (elt->exp)) == mode
  && exp_equiv_p (elt->exp, elt->exp, 1, 0))
       return copy_rtx (SUBREG_REG (elt->exp));
   }

      return x;
    }





  folded_arg0 = fold_rtx (SUBREG_REG (x), insn);
  const_arg0 = equiv_constant (folded_arg0);
  if (const_arg0)
    folded_arg0 = const_arg0;

  if (folded_arg0 != SUBREG_REG (x))
    {
      new = simplify_subreg (mode, folded_arg0,
        GET_MODE (SUBREG_REG (x)), SUBREG_BYTE (x));
      if (new)
 return new;
    }

  if (REG_P (folded_arg0)
      && GET_MODE_SIZE (mode) < GET_MODE_SIZE (GET_MODE (folded_arg0)))
    {
      struct table_elt *elt;

      elt = lookup (folded_arg0,
      HASH (folded_arg0, GET_MODE (folded_arg0)),
      GET_MODE (folded_arg0));

      if (elt)
 elt = elt->first_same_value;

      if (subreg_lowpart_p (x))
 for (; elt; elt = elt->next_same_value)
   {
     enum rtx_code eltcode = GET_CODE (elt->exp);


     if (UNARY_P (elt->exp)
  && eltcode != SIGN_EXTEND
  && eltcode != ZERO_EXTEND
  && GET_CODE (XEXP (elt->exp, 0)) == SUBREG
  && GET_MODE (SUBREG_REG (XEXP (elt->exp, 0))) == mode
  && (GET_MODE_CLASS (mode)
      == GET_MODE_CLASS (GET_MODE (XEXP (elt->exp, 0)))))
       {
  rtx op0 = SUBREG_REG (XEXP (elt->exp, 0));

  if (!REG_P (op0) && ! CONSTANT_P (op0))
    op0 = fold_rtx (op0, NULL_RTX);

  op0 = equiv_constant (op0);
  if (op0)
    new = simplify_unary_operation (GET_CODE (elt->exp), mode,
        op0, mode);
       }
     else if (ARITHMETIC_P (elt->exp)
       && eltcode != DIV && eltcode != MOD
       && eltcode != UDIV && eltcode != UMOD
       && eltcode != ASHIFTRT && eltcode != LSHIFTRT
       && eltcode != ROTATE && eltcode != ROTATERT
       && ((GET_CODE (XEXP (elt->exp, 0)) == SUBREG
     && (GET_MODE (SUBREG_REG (XEXP (elt->exp, 0)))
         == mode))
    || CONSTANT_P (XEXP (elt->exp, 0)))
       && ((GET_CODE (XEXP (elt->exp, 1)) == SUBREG
     && (GET_MODE (SUBREG_REG (XEXP (elt->exp, 1)))
         == mode))
    || CONSTANT_P (XEXP (elt->exp, 1))))
       {
  rtx op0 = gen_lowpart_common (mode, XEXP (elt->exp, 0));
  rtx op1 = gen_lowpart_common (mode, XEXP (elt->exp, 1));

  if (op0 && !REG_P (op0) && ! CONSTANT_P (op0))
    op0 = fold_rtx (op0, NULL_RTX);

  if (op0)
    op0 = equiv_constant (op0);

  if (op1 && !REG_P (op1) && ! CONSTANT_P (op1))
    op1 = fold_rtx (op1, NULL_RTX);

  if (op1)
    op1 = equiv_constant (op1);






  if (op0 && op1
      && GET_CODE (elt->exp) == ASHIFT
      && GET_CODE (op1) == CONST_INT
      && INTVAL (op1) >= GET_MODE_BITSIZE (mode))
    {
      if (INTVAL (op1)
   < GET_MODE_BITSIZE (GET_MODE (elt->exp)))



        new = CONST0_RTX (mode);
      else


        new = 0;
    }
  else if (op0 && op1)
    new = simplify_binary_operation (GET_CODE (elt->exp),
         mode, op0, op1);
       }

     else if (GET_CODE (elt->exp) == SUBREG
       && GET_MODE (SUBREG_REG (elt->exp)) == mode
       && (GET_MODE_SIZE (GET_MODE (folded_arg0))
    <= UNITS_PER_WORD)
       && exp_equiv_p (elt->exp, elt->exp, 1, 0))
       new = copy_rtx (SUBREG_REG (elt->exp));

     if (new)
       return new;
   }
      else





 for (; elt; elt = elt->next_same_value)
   {
     if (GET_CODE (elt->exp) == ZERO_EXTEND
  && subreg_lsb (x)
  >= GET_MODE_BITSIZE (GET_MODE (XEXP (elt->exp, 0))))
       return CONST0_RTX (mode);
   }
    }

  return x;
}
