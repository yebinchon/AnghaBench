
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;
typedef int REAL_VALUE_TYPE ;


 int ABS_EXPR ;
 scalar_t__ BUILTIN_EXPONENT_P (int) ;
 scalar_t__ BUILTIN_ROOT_P (int) ;
 scalar_t__ BUILTIN_SQRT_P (int) ;
 int BUILT_IN_POW ;
 int BUILT_IN_POWF ;
 int BUILT_IN_POWL ;
 int MULT_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ REAL_CST ;
 scalar_t__ REAL_EXP (int *) ;
 int REAL_TYPE ;
 int SET_REAL_EXP (int *,scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_CONSTANT_OVERFLOW (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_REAL_CST (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 int VOID_TYPE ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_real (scalar_t__,int ) ;
 scalar_t__ build_tree_list (scalar_t__,scalar_t__) ;
 int builtin_mathfn_code (scalar_t__) ;
 int dconsthalf ;
 int dconstthird ;
 int flag_errno_math ;
 int flag_trapping_math ;
 scalar_t__ flag_unsafe_math_optimizations ;
 scalar_t__ fold_build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ mathfn_built_in (scalar_t__,int) ;
 scalar_t__ real_sqrt (int *,int ,int *) ;
 int real_value_truncate (int ,int ) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 int tree_expr_nonnegative_p (scalar_t__) ;
 int validate_arglist (scalar_t__,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_sqrt (tree arglist, tree type)
{

  enum built_in_function fcode;
  tree arg = TREE_VALUE (arglist);

  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    return NULL_TREE;


  if (TREE_CODE (arg) == REAL_CST
      && ! TREE_CONSTANT_OVERFLOW (arg))
    {
      REAL_VALUE_TYPE r, x;

      x = TREE_REAL_CST (arg);
      if (real_sqrt (&r, TYPE_MODE (type), &x)
   || (!flag_trapping_math && !flag_errno_math))
 return build_real (type, r);
    }


  fcode = builtin_mathfn_code (arg);
  if (flag_unsafe_math_optimizations && BUILTIN_EXPONENT_P (fcode))
    {
      tree expfn = TREE_OPERAND (TREE_OPERAND (arg, 0), 0);
      arg = fold_build2 (MULT_EXPR, type,
    TREE_VALUE (TREE_OPERAND (arg, 1)),
    build_real (type, dconsthalf));
      arglist = build_tree_list (NULL_TREE, arg);
      return build_function_call_expr (expfn, arglist);
    }


  if (flag_unsafe_math_optimizations && BUILTIN_ROOT_P (fcode))
    {
      tree powfn = mathfn_built_in (type, BUILT_IN_POW);

      if (powfn)
 {
   tree arg0 = TREE_VALUE (TREE_OPERAND (arg, 1));
   tree tree_root;

   REAL_VALUE_TYPE dconstroot =
     BUILTIN_SQRT_P (fcode) ? dconsthalf : dconstthird;


   SET_REAL_EXP (&dconstroot, REAL_EXP (&dconstroot) - 1);
   dconstroot = real_value_truncate (TYPE_MODE (type), dconstroot);
   tree_root = build_real (type, dconstroot);
   arglist = tree_cons (NULL_TREE, arg0,
          build_tree_list (NULL_TREE, tree_root));
   return build_function_call_expr (powfn, arglist);
 }
    }


  if (flag_unsafe_math_optimizations
      && (fcode == BUILT_IN_POW
   || fcode == BUILT_IN_POWF
   || fcode == BUILT_IN_POWL))
    {
      tree powfn = TREE_OPERAND (TREE_OPERAND (arg, 0), 0);
      tree arg0 = TREE_VALUE (TREE_OPERAND (arg, 1));
      tree arg1 = TREE_VALUE (TREE_CHAIN (TREE_OPERAND (arg, 1)));
      tree narg1;
      if (!tree_expr_nonnegative_p (arg0))
 arg0 = build1 (ABS_EXPR, type, arg0);
      narg1 = fold_build2 (MULT_EXPR, type, arg1,
      build_real (type, dconsthalf));
      arglist = tree_cons (NULL_TREE, arg0,
      build_tree_list (NULL_TREE, narg1));
      return build_function_call_expr (powfn, arglist);
    }

  return NULL_TREE;
}
