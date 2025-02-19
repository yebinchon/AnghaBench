
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_RTX_CLASS (int) ;
 int HIGH ;
 int LO_SUM ;
 int MEM ;
 int REG ;
 int SUBREG ;
 int SUBREG_BYTE (scalar_t__) ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ gen_rtx_LO_SUM (int,scalar_t__,scalar_t__) ;
 scalar_t__ replace_equiv_address_nv (scalar_t__,scalar_t__) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 scalar_t__ simplify_gen_binary (int,int,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_gen_relational (int,int,int,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_gen_subreg (int,scalar_t__,int,int ) ;
 scalar_t__ simplify_gen_ternary (int,int,int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_gen_unary (int,int,scalar_t__,int) ;

rtx
simplify_replace_rtx (rtx x, rtx old_rtx, rtx new_rtx)
{
  enum rtx_code code = GET_CODE (x);
  enum machine_mode mode = GET_MODE (x);
  enum machine_mode op_mode;
  rtx op0, op1, op2;





  if (x == old_rtx)
    return new_rtx;

  switch (GET_RTX_CLASS (code))
    {
    case 128:
      op0 = XEXP (x, 0);
      op_mode = GET_MODE (op0);
      op0 = simplify_replace_rtx (op0, old_rtx, new_rtx);
      if (op0 == XEXP (x, 0))
 return x;
      return simplify_gen_unary (code, mode, op0, op_mode);

    case 136:
    case 134:
      op0 = simplify_replace_rtx (XEXP (x, 0), old_rtx, new_rtx);
      op1 = simplify_replace_rtx (XEXP (x, 1), old_rtx, new_rtx);
      if (op0 == XEXP (x, 0) && op1 == XEXP (x, 1))
 return x;
      return simplify_gen_binary (code, mode, op0, op1);

    case 132:
    case 133:
      op0 = XEXP (x, 0);
      op1 = XEXP (x, 1);
      op_mode = GET_MODE (op0) != VOIDmode ? GET_MODE (op0) : GET_MODE (op1);
      op0 = simplify_replace_rtx (op0, old_rtx, new_rtx);
      op1 = simplify_replace_rtx (op1, old_rtx, new_rtx);
      if (op0 == XEXP (x, 0) && op1 == XEXP (x, 1))
 return x;
      return simplify_gen_relational (code, mode, op_mode, op0, op1);

    case 129:
    case 135:
      op0 = XEXP (x, 0);
      op_mode = GET_MODE (op0);
      op0 = simplify_replace_rtx (op0, old_rtx, new_rtx);
      op1 = simplify_replace_rtx (XEXP (x, 1), old_rtx, new_rtx);
      op2 = simplify_replace_rtx (XEXP (x, 2), old_rtx, new_rtx);
      if (op0 == XEXP (x, 0) && op1 == XEXP (x, 1) && op2 == XEXP (x, 2))
 return x;
      if (op_mode == VOIDmode)
 op_mode = GET_MODE (op0);
      return simplify_gen_ternary (code, mode, op_mode, op0, op1, op2);

    case 131:

      if (code == SUBREG)
 {
   op0 = simplify_replace_rtx (SUBREG_REG (x), old_rtx, new_rtx);
   if (op0 == SUBREG_REG (x))
     return x;
   op0 = simplify_gen_subreg (GET_MODE (x), op0,
         GET_MODE (SUBREG_REG (x)),
         SUBREG_BYTE (x));
   return op0 ? op0 : x;
 }
      break;

    case 130:
      if (code == MEM)
 {
   op0 = simplify_replace_rtx (XEXP (x, 0), old_rtx, new_rtx);
   if (op0 == XEXP (x, 0))
     return x;
   return replace_equiv_address_nv (x, op0);
 }
      else if (code == LO_SUM)
 {
   op0 = simplify_replace_rtx (XEXP (x, 0), old_rtx, new_rtx);
   op1 = simplify_replace_rtx (XEXP (x, 1), old_rtx, new_rtx);


   if (GET_CODE (op0) == HIGH && rtx_equal_p (XEXP (op0, 0), op1))
     return op1;

   if (op0 == XEXP (x, 0) && op1 == XEXP (x, 1))
     return x;
   return gen_rtx_LO_SUM (mode, op0, op1);
 }
      else if (code == REG)
 {
   if (rtx_equal_p (x, old_rtx))
     return new_rtx;
 }
      break;

    default:
      break;
    }
  return x;
}
