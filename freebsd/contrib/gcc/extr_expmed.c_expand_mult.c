
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct algorithm {int dummy; } ;
typedef scalar_t__ rtx ;
typedef enum mult_variant { ____Placeholder_mult_variant } mult_variant ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_DOUBLE_HIGH (scalar_t__) ;
 scalar_t__ CONST_DOUBLE_LOW (scalar_t__) ;
 scalar_t__ CONST_INT ;
 scalar_t__ EXACT_POWER_OF_2_OR_ZERO_P (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 scalar_t__ INTVAL (scalar_t__) ;
 scalar_t__ LAST_VIRTUAL_REGISTER ;
 int LSHIFT_EXPR ;
 scalar_t__ MODE_INT ;
 scalar_t__ NULL_RTX ;
 int NULL_TREE ;
 int OPTAB_LIB_WIDEN ;
 scalar_t__ REAL_VALUES_EQUAL (int ,int ) ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,scalar_t__) ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 scalar_t__ SCALAR_INT_MODE_P (int) ;
 int SET ;
 int add_optab ;
 int build_int_cst (int ,int) ;
 scalar_t__ choose_mult_variant (int,scalar_t__,struct algorithm*,int*,int) ;
 scalar_t__ const0_rtx ;
 scalar_t__ const1_rtx ;
 scalar_t__ constm1_rtx ;
 int dconst2 ;
 scalar_t__ expand_binop (int,int ,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ expand_mult_const (int,scalar_t__,scalar_t__,scalar_t__,struct algorithm*,int) ;
 scalar_t__ expand_shift (int ,int,scalar_t__,int ,scalar_t__,int) ;
 scalar_t__ expand_unop (int,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ flag_trapv ;
 int floor_log2 (scalar_t__) ;
 scalar_t__ force_reg (int ,scalar_t__) ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ gen_raw_REG (int,scalar_t__) ;
 int gen_rtx_MULT (int,scalar_t__,scalar_t__) ;
 int* neg_cost ;
 int neg_optab ;
 int negv_optab ;
 int rtx_cost (int ,int ) ;
 int smul_optab ;
 int smulv_optab ;

rtx
expand_mult (enum machine_mode mode, rtx op0, rtx op1, rtx target,
      int unsignedp)
{
  enum mult_variant variant;
  struct algorithm algorithm;
  int max_cost;



  if (op1 == const0_rtx)
    return const0_rtx;
  if (op1 == const1_rtx)
    return op0;
  if (op1 == constm1_rtx)
    return expand_unop (mode,
   GET_MODE_CLASS (mode) == MODE_INT
   && !unsignedp && flag_trapv
   ? negv_optab : neg_optab,
   op0, target, 0);



  if (SCALAR_INT_MODE_P (mode)
      && (unsignedp || !flag_trapv))
    {
      HOST_WIDE_INT coeff = 0;
      rtx fake_reg = gen_raw_REG (mode, LAST_VIRTUAL_REGISTER + 1);
      if (GET_CODE (op1) == CONST_INT)
 {



   if (INTVAL (op1) < 0
       && GET_MODE_BITSIZE (mode) > HOST_BITS_PER_WIDE_INT)
     {




       max_cost = rtx_cost (gen_rtx_MULT (mode, fake_reg, op1), SET)
    - neg_cost[mode];
       if (max_cost > 0
    && choose_mult_variant (mode, -INTVAL (op1), &algorithm,
       &variant, max_cost))
  {
    rtx temp = expand_mult_const (mode, op0, -INTVAL (op1),
      NULL_RTX, &algorithm,
      variant);
    return expand_unop (mode, neg_optab, temp, target, 0);
  }
     }
   else coeff = INTVAL (op1);
 }
      else if (GET_CODE (op1) == CONST_DOUBLE)
 {


   if (CONST_DOUBLE_HIGH (op1) == 0)
     coeff = CONST_DOUBLE_LOW (op1);
   else if (CONST_DOUBLE_LOW (op1) == 0
     && EXACT_POWER_OF_2_OR_ZERO_P (CONST_DOUBLE_HIGH (op1)))
     {
       int shift = floor_log2 (CONST_DOUBLE_HIGH (op1))
     + HOST_BITS_PER_WIDE_INT;
       return expand_shift (LSHIFT_EXPR, mode, op0,
       build_int_cst (NULL_TREE, shift),
       target, unsignedp);
     }
 }





      if (coeff != 0)
 {

   if (EXACT_POWER_OF_2_OR_ZERO_P (coeff))
     return expand_shift (LSHIFT_EXPR, mode, op0,
     build_int_cst (NULL_TREE, floor_log2 (coeff)),
     target, unsignedp);



   max_cost = rtx_cost (gen_rtx_MULT (mode, fake_reg, op1), SET);
   if (choose_mult_variant (mode, coeff, &algorithm, &variant,
       max_cost))
     return expand_mult_const (mode, op0, coeff, target,
          &algorithm, variant);
 }
    }

  if (GET_CODE (op0) == CONST_DOUBLE)
    {
      rtx temp = op0;
      op0 = op1;
      op1 = temp;
    }


  if (GET_CODE (op1) == CONST_DOUBLE
      && SCALAR_FLOAT_MODE_P (mode))
    {
      REAL_VALUE_TYPE d;
      REAL_VALUE_FROM_CONST_DOUBLE (d, op1);

      if (REAL_VALUES_EQUAL (d, dconst2))
 {
   op0 = force_reg (GET_MODE (op0), op0);
   return expand_binop (mode, add_optab, op0, op0,
          target, unsignedp, OPTAB_LIB_WIDEN);
 }
    }



  op0 = expand_binop (mode,
        ! unsignedp
        && flag_trapv && (GET_MODE_CLASS(mode) == MODE_INT)
        ? smulv_optab : smul_optab,
        op0, op1, target, unsignedp, OPTAB_LIB_WIDEN);
  gcc_assert (op0);
  return op0;
}
