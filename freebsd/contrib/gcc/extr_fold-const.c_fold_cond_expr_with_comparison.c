
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {int (* signed_type ) (int ) ;} ;
struct TYPE_4__ {int name; TYPE_1__ types; } ;


 int ABS_EXPR ;
 int COND_EXPR ;

 scalar_t__ FLOAT_TYPE_P (int ) ;


 int HONOR_NANS (int ) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;



 int MAX_EXPR ;
 scalar_t__ MINUS_EXPR ;
 int MIN_EXPR ;
 scalar_t__ NEGATE_EXPR ;

 int NULL_TREE ;
 int OEP_ONLY_CONST ;
 scalar_t__ PLUS_EXPR ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CODE_CLASS (int) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_MAIN_VARIANT (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 int TYPE_MODE (int ) ;
 int TYPE_UNSIGNED (int ) ;





 int build_int_cst (int ,int ) ;
 int const_binop (scalar_t__,int ,int ,int ) ;
 int flag_trapping_math ;
 int fold_build1 (int ,int ,int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fold_build3 (int ,int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 scalar_t__ in_gimple_form ;
 int integer_one_node ;
 scalar_t__ integer_zerop (int ) ;
 TYPE_2__ lang_hooks ;
 int maybe_lvalue_p (int ) ;
 int negate_expr (int ) ;
 scalar_t__ operand_equal_for_comparison_p (int ,int ,int ) ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 int pedantic_non_lvalue (int ) ;
 scalar_t__ real_zerop (int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int tcc_comparison ;

__attribute__((used)) static tree
fold_cond_expr_with_comparison (tree type, tree arg0, tree arg1, tree arg2)
{
  enum tree_code comp_code = TREE_CODE (arg0);
  tree arg00 = TREE_OPERAND (arg0, 0);
  tree arg01 = TREE_OPERAND (arg0, 1);
  tree arg1_type = TREE_TYPE (arg1);
  tree tem;

  STRIP_NOPS (arg1);
  STRIP_NOPS (arg2);
  if ((FLOAT_TYPE_P (TREE_TYPE (arg01))
       ? real_zerop (arg01)
       : integer_zerop (arg01))
      && ((TREE_CODE (arg2) == NEGATE_EXPR
    && operand_equal_p (TREE_OPERAND (arg2, 0), arg1, 0))


   || (TREE_CODE (arg1) == MINUS_EXPR
       && TREE_CODE (arg2) == MINUS_EXPR
       && operand_equal_p (TREE_OPERAND (arg1, 0),
      TREE_OPERAND (arg2, 1), 0)
       && operand_equal_p (TREE_OPERAND (arg1, 1),
      TREE_OPERAND (arg2, 0), 0))))
    switch (comp_code)
      {
      case 139:
      case 132:
 tem = fold_convert (arg1_type, arg1);
 return pedantic_non_lvalue (fold_convert (type, negate_expr (tem)));
      case 133:
      case 135:
 return pedantic_non_lvalue (fold_convert (type, arg1));
      case 131:
      case 130:
 if (flag_trapping_math)
   break;

      case 138:
      case 137:
 if (TYPE_UNSIGNED (TREE_TYPE (arg1)))
   arg1 = fold_convert (lang_hooks.types.signed_type
          (TREE_TYPE (arg1)), arg1);
 tem = fold_build1 (ABS_EXPR, TREE_TYPE (arg1), arg1);
 return pedantic_non_lvalue (fold_convert (type, tem));
      case 129:
      case 128:
 if (flag_trapping_math)
   break;
      case 136:
      case 134:
 if (TYPE_UNSIGNED (TREE_TYPE (arg1)))
   arg1 = fold_convert (lang_hooks.types.signed_type
          (TREE_TYPE (arg1)), arg1);
 tem = fold_build1 (ABS_EXPR, TREE_TYPE (arg1), arg1);
 return negate_expr (fold_convert (type, tem));
      default:
 gcc_assert (TREE_CODE_CLASS (comp_code) == tcc_comparison);
 break;
      }






  if (integer_zerop (arg01) && integer_zerop (arg2))
    {
      if (comp_code == 133)
 return pedantic_non_lvalue (fold_convert (type, arg1));
      else if (comp_code == 139)
 return build_int_cst (type, 0);
    }
  if (operand_equal_for_comparison_p (arg01, arg2, arg00)


      && (in_gimple_form
   || (strcmp (lang_hooks.name, "GNU C++") != 0
       && strcmp (lang_hooks.name, "GNU Objective-C++") != 0)
   || ! maybe_lvalue_p (arg1)
   || ! maybe_lvalue_p (arg2)))
    {
      tree comp_op0 = arg00;
      tree comp_op1 = arg01;
      tree comp_type = TREE_TYPE (comp_op0);


      if (TYPE_MAIN_VARIANT (comp_type) == TYPE_MAIN_VARIANT (type))
 {
   comp_type = type;
   comp_op0 = arg1;
   comp_op1 = arg2;
 }

      switch (comp_code)
 {
 case 139:
   return pedantic_non_lvalue (fold_convert (type, arg2));
 case 133:
   return pedantic_non_lvalue (fold_convert (type, arg1));
 case 136:
 case 134:
 case 129:
 case 128:




   if (!HONOR_NANS (TYPE_MODE (TREE_TYPE (arg1))))
     {
       comp_op0 = fold_convert (comp_type, comp_op0);
       comp_op1 = fold_convert (comp_type, comp_op1);
       tem = (comp_code == 136 || comp_code == 129)
      ? fold_build2 (MIN_EXPR, comp_type, comp_op0, comp_op1)
      : fold_build2 (MIN_EXPR, comp_type, comp_op1, comp_op0);
       return pedantic_non_lvalue (fold_convert (type, tem));
     }
   break;
 case 138:
 case 137:
 case 131:
 case 130:
   if (!HONOR_NANS (TYPE_MODE (TREE_TYPE (arg1))))
     {
       comp_op0 = fold_convert (comp_type, comp_op0);
       comp_op1 = fold_convert (comp_type, comp_op1);
       tem = (comp_code == 138 || comp_code == 131)
      ? fold_build2 (MAX_EXPR, comp_type, comp_op0, comp_op1)
      : fold_build2 (MAX_EXPR, comp_type, comp_op1, comp_op0);
       return pedantic_non_lvalue (fold_convert (type, tem));
     }
   break;
 case 132:
   if (!HONOR_NANS (TYPE_MODE (TREE_TYPE (arg1))))
     return pedantic_non_lvalue (fold_convert (type, arg2));
   break;
 case 135:
   if (!HONOR_NANS (TYPE_MODE (TREE_TYPE (arg1))))
     return pedantic_non_lvalue (fold_convert (type, arg1));
   break;
 default:
   gcc_assert (TREE_CODE_CLASS (comp_code) == tcc_comparison);
   break;
 }
    }







  if (INTEGRAL_TYPE_P (type)
      && TREE_CODE (arg01) == INTEGER_CST
      && TREE_CODE (arg2) == INTEGER_CST)
    switch (comp_code)
      {
      case 139:

 arg1 = fold_convert (type, arg01);
 return fold_build3 (COND_EXPR, type, arg0, arg1, arg2);

      case 134:

 if (! operand_equal_p (arg2, TYPE_MAX_VALUE (type),
          OEP_ONLY_CONST)
     && operand_equal_p (arg01,
    const_binop (PLUS_EXPR, arg2,
          integer_one_node, 0),
    OEP_ONLY_CONST))
   return pedantic_non_lvalue (fold_build2 (MIN_EXPR,
         type, arg1, arg2));
 break;

      case 136:

 if (! operand_equal_p (arg2, TYPE_MIN_VALUE (type),
          OEP_ONLY_CONST)
     && operand_equal_p (arg01,
    const_binop (MINUS_EXPR, arg2,
          integer_one_node, 0),
    OEP_ONLY_CONST))
   return pedantic_non_lvalue (fold_build2 (MIN_EXPR,
         type, arg1, arg2));
 break;

      case 137:

 if (! operand_equal_p (arg2, TYPE_MIN_VALUE (type),
          OEP_ONLY_CONST)
     && operand_equal_p (arg01,
    const_binop (MINUS_EXPR, arg2,
          integer_one_node, 0),
    OEP_ONLY_CONST))
   return pedantic_non_lvalue (fold_build2 (MAX_EXPR,
         type, arg1, arg2));
 break;

      case 138:

 if (! operand_equal_p (arg2, TYPE_MAX_VALUE (type),
          OEP_ONLY_CONST)
     && operand_equal_p (arg01,
    const_binop (PLUS_EXPR, arg2,
          integer_one_node, 0),
    OEP_ONLY_CONST))
   return pedantic_non_lvalue (fold_build2 (MAX_EXPR,
         type, arg1, arg2));
 break;
      case 133:
 break;
      default:
 gcc_unreachable ();
      }

  return NULL_TREE;
}
