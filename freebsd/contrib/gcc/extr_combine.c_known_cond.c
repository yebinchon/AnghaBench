
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ABS ;
 scalar_t__ COMMUTATIVE_ARITH_P (scalar_t__) ;
 scalar_t__ COMPARISON_P (scalar_t__) ;

 int FLOAT_MODE_P (int) ;

 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;







 int NE ;
 int NEG ;
 int SMAX ;
 int SMIN ;
 int SUBREG ;
 int SUBREG_BYTE (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 int SUBST (scalar_t__,scalar_t__) ;
 int UMAX ;
 int UMIN ;
 int UNEQ ;
 int UNKNOWN ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int ZERO_EXTEND ;
 scalar_t__ comparison_dominates_p (int,int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ const_true_rtx ;
 int reverse_condition (int) ;
 int reversed_comparison_code (scalar_t__,int *) ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;
 scalar_t__ side_effects_p (scalar_t__) ;
 scalar_t__ simplify_gen_unary (int ,int,scalar_t__,int) ;
 scalar_t__ simplify_subreg (int,scalar_t__,int,int ) ;
 scalar_t__ simplify_unary_operation (int,int,scalar_t__,int) ;
 int swap_condition (int) ;

__attribute__((used)) static rtx
known_cond (rtx x, enum rtx_code cond, rtx reg, rtx val)
{
  enum rtx_code code = GET_CODE (x);
  rtx temp;
  const char *fmt;
  int i, j;

  if (side_effects_p (x))
    return x;



  if (cond == 136
      && rtx_equal_p (x, reg)
      && ! FLOAT_MODE_P (GET_MODE (x))
      && ! FLOAT_MODE_P (GET_MODE (val)))
    return val;

  if (cond == UNEQ && rtx_equal_p (x, reg))
    return val;




  if (code == ABS && rtx_equal_p (XEXP (x, 0), reg) && val == const0_rtx)
    switch (cond)
      {
      case 135: case 133: case 136:
 return XEXP (x, 0);
      case 129: case 131:
 return simplify_gen_unary (NEG, GET_MODE (XEXP (x, 0)),
       XEXP (x, 0),
       GET_MODE (XEXP (x, 0)));
      default:
 break;
      }




  else if (COMPARISON_P (x) || COMMUTATIVE_ARITH_P (x))
    {
      if (rtx_equal_p (XEXP (x, 0), val))
 cond = swap_condition (cond), temp = val, val = reg, reg = temp;

      if (rtx_equal_p (XEXP (x, 0), reg) && rtx_equal_p (XEXP (x, 1), val))
 {
   if (COMPARISON_P (x))
     {
       if (comparison_dominates_p (cond, code))
  return const_true_rtx;

       code = reversed_comparison_code (x, ((void*)0));
       if (code != UNKNOWN
    && comparison_dominates_p (cond, code))
  return const0_rtx;
       else
  return x;
     }
   else if (code == SMAX || code == SMIN
     || code == UMIN || code == UMAX)
     {
       int unsignedp = (code == UMIN || code == UMAX);





       if ((code == SMAX || code == UMAX)
    && ! (cond == 136 || cond == NE))
  cond = reverse_condition (cond);

       switch (cond)
  {
  case 135: case 133:
    return unsignedp ? x : XEXP (x, 1);
  case 131: case 129:
    return unsignedp ? x : XEXP (x, 0);
  case 134: case 132:
    return unsignedp ? XEXP (x, 1) : x;
  case 130: case 128:
    return unsignedp ? XEXP (x, 0) : x;
  default:
    break;
  }
     }
 }
    }
  else if (code == SUBREG)
    {
      enum machine_mode inner_mode = GET_MODE (SUBREG_REG (x));
      rtx new, r = known_cond (SUBREG_REG (x), cond, reg, val);

      if (SUBREG_REG (x) != r)
 {


   new = simplify_subreg (GET_MODE (x), r,
     inner_mode, SUBREG_BYTE (x));
   if (new)
     return new;
   else
     SUBST (SUBREG_REG (x), r);
 }

      return x;
    }






  else if (code == ZERO_EXTEND)
    {
      enum machine_mode inner_mode = GET_MODE (XEXP (x, 0));
      rtx new, r = known_cond (XEXP (x, 0), cond, reg, val);

      if (XEXP (x, 0) != r)
 {


   new = simplify_unary_operation (ZERO_EXTEND, GET_MODE (x),
       r, inner_mode);
   if (new)
     return new;
   else
     SUBST (XEXP (x, 0), r);
 }

      return x;
    }

  fmt = GET_RTX_FORMAT (code);
  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 SUBST (XEXP (x, i), known_cond (XEXP (x, i), cond, reg, val));
      else if (fmt[i] == 'E')
 for (j = XVECLEN (x, i) - 1; j >= 0; j--)
   SUBST (XVECEXP (x, i, j), known_cond (XVECEXP (x, i, j),
      cond, reg, val));
    }

  return x;
}
