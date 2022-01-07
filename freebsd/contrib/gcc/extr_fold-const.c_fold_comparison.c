
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
typedef int REAL_VALUE_TYPE ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ COMPONENT_REF ;
 scalar_t__ CONVERT_EXPR ;
 scalar_t__ DECL_BIT_FIELD (scalar_t__) ;
 int DECL_SIZE (scalar_t__) ;
 int END_BUILTINS ;

 scalar_t__ EXACT_DIV_EXPR ;
 scalar_t__ FLOAT_TYPE_P (scalar_t__) ;


 int HONOR_NANS (int ) ;
 int HONOR_SNANS (int ) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ INTEGRAL_TYPE_P (scalar_t__) ;

 int LSHIFT_EXPR ;

 scalar_t__ MAX_EXPR ;
 scalar_t__ MINUS_EXPR ;
 scalar_t__ MIN_EXPR ;
 scalar_t__ NEGATE_EXPR ;

 scalar_t__ NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PLUS_EXPR ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ POSTDECREMENT_EXPR ;
 scalar_t__ POSTINCREMENT_EXPR ;
 int PREDECREMENT_EXPR ;
 int PREINCREMENT_EXPR ;
 scalar_t__ REAL_CST ;
 scalar_t__ REAL_VALUE_ISINF (int ) ;
 scalar_t__ REAL_VALUE_ISNAN (int ) ;
 scalar_t__ REAL_VALUE_MINUS_ZERO (int ) ;
 int REAL_VALUE_NEGATE (int ) ;
 int RSHIFT_EXPR ;
 int STRIP_SIGN_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CONSTANT (scalar_t__) ;
 int TREE_CONSTANT_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_OVERFLOW (scalar_t__) ;
 int TREE_REAL_CST (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TRUNC_DIV_EXPR ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 int TYPE_OVERFLOW_TRAPS (scalar_t__) ;
 scalar_t__ TYPE_OVERFLOW_UNDEFINED (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 int WARN_STRICT_OVERFLOW_COMPARISON ;
 scalar_t__ build2 (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_fold_addr_expr (scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,scalar_t__) ;
 scalar_t__ build_real (scalar_t__,int ) ;
 int builtin_mathfn_code (scalar_t__) ;
 scalar_t__ const_binop (scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ constant_boolean_node (int,scalar_t__) ;
 int dconst0 ;
 scalar_t__ eval_subst (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ extract_array_ref (scalar_t__,scalar_t__*,scalar_t__*) ;
 int flag_errno_math ;
 scalar_t__ flag_unsafe_math_optimizations ;
 int flag_wrapv ;
 scalar_t__ fold_build2 (int const,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__ fold_div_compare (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_inf_compare (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_mathfn_compare (int,int,scalar_t__,scalar_t__,scalar_t__) ;
 int fold_overflow_warning (char*,int ) ;
 scalar_t__ fold_relational_const (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_sign_changed_comparison (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_widened_comparison (int,scalar_t__,scalar_t__,scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ host_integerp (int ,int) ;
 scalar_t__ integer_one_node ;
 int integer_onep (scalar_t__) ;
 scalar_t__ integer_zero_node ;
 int integer_zerop (scalar_t__) ;
 scalar_t__ omit_one_operand (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ operand_equal_p (scalar_t__,scalar_t__,int ) ;
 scalar_t__ optimize_minmax_comparison (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ save_expr (scalar_t__) ;
 scalar_t__ signed_type_for (int ) ;
 int size_type_node ;
 scalar_t__ strip_float_extensions (scalar_t__) ;
 int swap_tree_comparison (int) ;
 scalar_t__ tree_low_cst (int ,int) ;
 scalar_t__ tree_swap_operands_p (scalar_t__,scalar_t__,int) ;
 scalar_t__ twoval_comparison_p (scalar_t__,scalar_t__*,scalar_t__*,int*) ;

__attribute__((used)) static tree
fold_comparison (enum tree_code code, tree type, tree op0, tree op1)
{
  tree arg0, arg1, tem;

  arg0 = op0;
  arg1 = op1;

  STRIP_SIGN_NOPS (arg0);
  STRIP_SIGN_NOPS (arg1);

  tem = fold_relational_const (code, type, arg0, arg1);
  if (tem != NULL_TREE)
    return tem;


  if (tree_swap_operands_p (arg0, arg1, 1))
    return fold_build2 (swap_tree_comparison (code), type, op1, op0);


  if ((TREE_CODE (arg0) == PLUS_EXPR || TREE_CODE (arg0) == MINUS_EXPR)
      && (TREE_CODE (TREE_OPERAND (arg0, 1)) == INTEGER_CST
   && !TREE_OVERFLOW (TREE_OPERAND (arg0, 1))
   && TYPE_OVERFLOW_UNDEFINED (TREE_TYPE (arg1)))
      && (TREE_CODE (arg1) == INTEGER_CST
   && !TREE_OVERFLOW (arg1)))
    {
      tree const1 = TREE_OPERAND (arg0, 1);
      tree const2 = arg1;
      tree variable = TREE_OPERAND (arg0, 0);
      tree lhs;
      int lhs_add;
      lhs_add = TREE_CODE (arg0) != PLUS_EXPR;

      lhs = fold_build2 (lhs_add ? PLUS_EXPR : MINUS_EXPR,
    TREE_TYPE (arg1), const2, const1);
      if (TREE_CODE (lhs) == TREE_CODE (arg1)
   && (TREE_CODE (lhs) != INTEGER_CST
       || !TREE_OVERFLOW (lhs)))
 {
   fold_overflow_warning (("assuming signed overflow does not occur "
      "when changing X +- C1 cmp C2 to "
      "X cmp C1 +- C2"),
     WARN_STRICT_OVERFLOW_COMPARISON);
   return fold_build2 (code, type, variable, lhs);
 }
    }
  if (POINTER_TYPE_P (TREE_TYPE (arg0))
      && !flag_wrapv
      && !TYPE_OVERFLOW_TRAPS (TREE_TYPE (arg0)))
    {
      tree base0, offset0, base1, offset1;

      if (extract_array_ref (arg0, &base0, &offset0)
   && extract_array_ref (arg1, &base1, &offset1)
   && operand_equal_p (base0, base1, 0))
        {
   tree signed_size_type_node;
   signed_size_type_node = signed_type_for (size_type_node);






   if (offset0 == NULL_TREE)
     offset0 = build_int_cst (signed_size_type_node, 0);
   else
     offset0 = fold_convert (signed_size_type_node, offset0);
   if (offset1 == NULL_TREE)
     offset1 = build_int_cst (signed_size_type_node, 0);
   else
     offset1 = fold_convert (signed_size_type_node, offset1);

   return fold_build2 (code, type, offset0, offset1);
 }
    }

  if (FLOAT_TYPE_P (TREE_TYPE (arg0)))
    {
      tree targ0 = strip_float_extensions (arg0);
      tree targ1 = strip_float_extensions (arg1);
      tree newtype = TREE_TYPE (targ0);

      if (TYPE_PRECISION (TREE_TYPE (targ1)) > TYPE_PRECISION (newtype))
 newtype = TREE_TYPE (targ1);


      if (TYPE_PRECISION (newtype) < TYPE_PRECISION (TREE_TYPE (arg0)))
 return fold_build2 (code, type, fold_convert (newtype, targ0),
       fold_convert (newtype, targ1));


      if (TREE_CODE (arg0) == NEGATE_EXPR
   && TREE_CODE (arg1) == NEGATE_EXPR)
 return fold_build2 (code, type, TREE_OPERAND (arg1, 0),
       TREE_OPERAND (arg0, 0));

      if (TREE_CODE (arg1) == REAL_CST)
 {
   REAL_VALUE_TYPE cst;
   cst = TREE_REAL_CST (arg1);


   if (TREE_CODE (arg0) == NEGATE_EXPR)
     return fold_build2 (swap_tree_comparison (code), type,
    TREE_OPERAND (arg0, 0),
    build_real (TREE_TYPE (arg1),
         REAL_VALUE_NEGATE (cst)));



   if (REAL_VALUE_MINUS_ZERO (cst))
     return fold_build2 (code, type, arg0,
    build_real (TREE_TYPE (arg1), dconst0));


   if (REAL_VALUE_ISNAN (cst)
       && ! HONOR_SNANS (TYPE_MODE (TREE_TYPE (arg1))))
     {
       tem = (code == 128) ? integer_one_node : integer_zero_node;
       return omit_one_operand (type, tem, arg0);
     }


   if (REAL_VALUE_ISINF (cst))
     {
       tem = fold_inf_compare (code, type, arg0, arg1);
       if (tem != NULL_TREE)
  return tem;
     }
 }





      if (flag_unsafe_math_optimizations
   && TREE_CODE (arg1) == REAL_CST
   && (TREE_CODE (arg0) == PLUS_EXPR
       || TREE_CODE (arg0) == MINUS_EXPR)
   && TREE_CODE (TREE_OPERAND (arg0, 1)) == REAL_CST
   && 0 != (tem = const_binop (TREE_CODE (arg0) == PLUS_EXPR
          ? MINUS_EXPR : PLUS_EXPR,
          arg1, TREE_OPERAND (arg0, 1), 0))
   && ! TREE_CONSTANT_OVERFLOW (tem))
 return fold_build2 (code, type, TREE_OPERAND (arg0, 0), tem);




      if (flag_unsafe_math_optimizations
   && TREE_CODE (arg1) == REAL_CST
   && TREE_CODE (arg0) == MINUS_EXPR
   && TREE_CODE (TREE_OPERAND (arg0, 0)) == REAL_CST
   && 0 != (tem = const_binop (MINUS_EXPR, TREE_OPERAND (arg0, 0),
          arg1, 0))
   && ! TREE_CONSTANT_OVERFLOW (tem))
 return fold_build2 (swap_tree_comparison (code), type,
       TREE_OPERAND (arg0, 1), tem);


      if (TREE_CODE (arg1) == REAL_CST
   && flag_unsafe_math_optimizations
   && ! flag_errno_math)
 {
   enum built_in_function fcode = builtin_mathfn_code (arg0);

   if (fcode != END_BUILTINS)
     {
       tem = fold_mathfn_compare (fcode, code, type, arg0, arg1);
       if (tem != NULL_TREE)
  return tem;
     }
 }
    }


  if (TREE_CONSTANT (arg1)
      && (TREE_CODE (arg0) == POSTINCREMENT_EXPR
   || TREE_CODE (arg0) == POSTDECREMENT_EXPR)




      && (POINTER_TYPE_P (TREE_TYPE (arg0))
   || (INTEGRAL_TYPE_P (TREE_TYPE (arg0))
       && (code == 133 || code == 128))))
    {
      tree varop, newconst;

      if (TREE_CODE (arg0) == POSTINCREMENT_EXPR)
 {
   newconst = fold_build2 (PLUS_EXPR, TREE_TYPE (arg0),
      arg1, TREE_OPERAND (arg0, 1));
   varop = build2 (PREINCREMENT_EXPR, TREE_TYPE (arg0),
     TREE_OPERAND (arg0, 0),
     TREE_OPERAND (arg0, 1));
 }
      else
 {
   newconst = fold_build2 (MINUS_EXPR, TREE_TYPE (arg0),
      arg1, TREE_OPERAND (arg0, 1));
   varop = build2 (PREDECREMENT_EXPR, TREE_TYPE (arg0),
     TREE_OPERAND (arg0, 0),
     TREE_OPERAND (arg0, 1));
 }




      if (TREE_CODE (TREE_OPERAND (varop, 0)) == COMPONENT_REF
   && DECL_BIT_FIELD (TREE_OPERAND (TREE_OPERAND (varop, 0), 1))
   && host_integerp (DECL_SIZE (TREE_OPERAND
      (TREE_OPERAND (varop, 0), 1)), 1))
 {
   tree fielddecl = TREE_OPERAND (TREE_OPERAND (varop, 0), 1);
   HOST_WIDE_INT size = tree_low_cst (DECL_SIZE (fielddecl), 1);
   tree folded_compare, shift;




   folded_compare = fold_build2 (code, type,
     TREE_OPERAND (varop, 0), arg1);
   if (TREE_CODE (folded_compare) == INTEGER_CST)
     return omit_one_operand (type, folded_compare, varop);

   shift = build_int_cst (NULL_TREE,
     TYPE_PRECISION (TREE_TYPE (varop)) - size);
   shift = fold_convert (TREE_TYPE (varop), shift);
   newconst = fold_build2 (LSHIFT_EXPR, TREE_TYPE (varop),
      newconst, shift);
   newconst = fold_build2 (RSHIFT_EXPR, TREE_TYPE (varop),
      newconst, shift);
 }

      return fold_build2 (code, type, varop, newconst);
    }

  if (TREE_CODE (TREE_TYPE (arg0)) == INTEGER_TYPE
      && (TREE_CODE (arg0) == NOP_EXPR
   || TREE_CODE (arg0) == CONVERT_EXPR))
    {



      tem = fold_widened_comparison (code, type, arg0, arg1);
      if (tem)
 return tem;


      tem = fold_sign_changed_comparison (code, type, arg0, arg1);
      if (tem)
 return tem;
    }



  if (TREE_CODE (arg1) == INTEGER_CST
      && (TREE_CODE (arg0) == MIN_EXPR
   || TREE_CODE (arg0) == MAX_EXPR)
      && TREE_CODE (TREE_OPERAND (arg0, 1)) == INTEGER_CST)
    {
      tem = optimize_minmax_comparison (code, type, op0, op1);
      if (tem)
 return tem;
    }



  if (operand_equal_p (arg0, arg1, 0))
    {
      switch (code)
 {
 case 133:
   if (! FLOAT_TYPE_P (TREE_TYPE (arg0))
       || ! HONOR_NANS (TYPE_MODE (TREE_TYPE (arg0))))
     return constant_boolean_node (1, type);
   break;

 case 132:
 case 130:
   if (! FLOAT_TYPE_P (TREE_TYPE (arg0))
       || ! HONOR_NANS (TYPE_MODE (TREE_TYPE (arg0))))
     return constant_boolean_node (1, type);
   return fold_build2 (133, type, arg0, arg1);

 case 128:


   if (FLOAT_TYPE_P (TREE_TYPE (arg0))
       && HONOR_NANS (TYPE_MODE (TREE_TYPE (arg0))))
     break;

 case 131:
 case 129:
   return constant_boolean_node (0, type);
 default:
   gcc_unreachable ();
 }
    }
  if (TREE_CODE (arg1) == INTEGER_CST && TREE_CODE (arg0) != INTEGER_CST)
    {
      tree cval1 = 0, cval2 = 0;
      int save_p = 0;

      if (twoval_comparison_p (arg0, &cval1, &cval2, &save_p)


   && cval1 != 0 && cval2 != 0
   && ! (TREE_CONSTANT (cval1) && TREE_CONSTANT (cval2))
   && TREE_TYPE (cval1) == TREE_TYPE (cval2)
   && INTEGRAL_TYPE_P (TREE_TYPE (cval1))
   && TYPE_MAX_VALUE (TREE_TYPE (cval1))
   && TYPE_MAX_VALUE (TREE_TYPE (cval2))
   && ! operand_equal_p (TYPE_MIN_VALUE (TREE_TYPE (cval1)),
    TYPE_MAX_VALUE (TREE_TYPE (cval2)), 0))
 {
   tree maxval = TYPE_MAX_VALUE (TREE_TYPE (cval1));
   tree minval = TYPE_MIN_VALUE (TREE_TYPE (cval1));




   tree high_result
  = fold_build2 (code, type,
          eval_subst (arg0, cval1, maxval,
        cval2, minval),
          arg1);
   tree equal_result
  = fold_build2 (code, type,
          eval_subst (arg0, cval1, maxval,
        cval2, maxval),
          arg1);
   tree low_result
  = fold_build2 (code, type,
          eval_subst (arg0, cval1, minval,
        cval2, maxval),
          arg1);




   if (TREE_CODE (high_result) == INTEGER_CST
       && TREE_CODE (equal_result) == INTEGER_CST
       && TREE_CODE (low_result) == INTEGER_CST)
     {


       switch ((integer_onep (high_result) * 4)
        + (integer_onep (equal_result) * 2)
        + integer_onep (low_result))
  {
  case 0:

    return omit_one_operand (type, integer_zero_node, arg0);
  case 1:
    code = 129;
    break;
  case 2:
    code = 133;
    break;
  case 3:
    code = 130;
    break;
  case 4:
    code = 131;
    break;
  case 5:
    code = 128;
    break;
  case 6:
    code = 132;
    break;
  case 7:

    return omit_one_operand (type, integer_one_node, arg0);
  }

       if (save_p)
  return save_expr (build2 (code, type, cval1, cval2));
       return fold_build2 (code, type, cval1, cval2);
     }
 }
    }





  if (TREE_CODE (arg0) == ADDR_EXPR
      && TREE_CODE (TREE_OPERAND (arg0, 0)) == COMPONENT_REF
      && TREE_CODE (arg1) == ADDR_EXPR
      && TREE_CODE (TREE_OPERAND (arg1, 0)) == COMPONENT_REF)
    {
      tree cref0 = TREE_OPERAND (arg0, 0);
      tree cref1 = TREE_OPERAND (arg1, 0);
      if (TREE_OPERAND (cref0, 1) == TREE_OPERAND (cref1, 1))
 {
   tree op0 = TREE_OPERAND (cref0, 0);
   tree op1 = TREE_OPERAND (cref1, 0);
   return fold_build2 (code, type,
         build_fold_addr_expr (op0),
         build_fold_addr_expr (op1));
 }
    }



  if ((TREE_CODE (arg0) == TRUNC_DIV_EXPR
       || TREE_CODE (arg0) == EXACT_DIV_EXPR)
      && TREE_CODE (arg1) == INTEGER_CST
      && TREE_CODE (TREE_OPERAND (arg0, 1)) == INTEGER_CST
      && !integer_zerop (TREE_OPERAND (arg0, 1))
      && !TREE_OVERFLOW (TREE_OPERAND (arg0, 1))
      && !TREE_OVERFLOW (arg1))
    {
      tem = fold_div_compare (code, type, arg0, arg1);
      if (tem != NULL_TREE)
 return tem;
    }

  return NULL_TREE;
}
