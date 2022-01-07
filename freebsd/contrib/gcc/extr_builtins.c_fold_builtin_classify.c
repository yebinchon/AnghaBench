
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int REAL_VALUE_TYPE ;





 int DECL_NAME (scalar_t__) ;
 int GT_EXPR ;
 int HONOR_INFINITIES (int ) ;
 int HONOR_NANS (int ) ;
 int IDENTIFIER_POINTER (int ) ;
 scalar_t__ NULL_TREE ;
 int REAL_CST ;
 int REAL_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_CODE (scalar_t__) ;
 int TREE_REAL_CST (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TYPE_MODE (scalar_t__) ;
 int UNORDERED_EXPR ;
 int VOID_TYPE ;
 scalar_t__ builtin_save_expr (scalar_t__) ;
 int dconst0 ;
 int error (char*,int ) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ integer_minus_one_node ;
 scalar_t__ integer_one_node ;
 scalar_t__ integer_zero_node ;
 scalar_t__ omit_one_operand (scalar_t__,scalar_t__,scalar_t__) ;
 int real_compare (int ,int *,int *) ;
 int real_isinf (int *) ;
 int real_isnan (int *) ;
 int validate_arglist (scalar_t__,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_classify (tree fndecl, tree arglist, int builtin_index)
{
  tree type = TREE_TYPE (TREE_TYPE (fndecl));
  tree arg;
  REAL_VALUE_TYPE r;

  if (!validate_arglist (arglist, REAL_TYPE, VOID_TYPE))
    {

      if (arglist == 0)
 {
   error ("too few arguments to function %qs",
   IDENTIFIER_POINTER (DECL_NAME (fndecl)));
   return error_mark_node;
 }
      else if (TREE_CHAIN (arglist) != 0)
 {
   error ("too many arguments to function %qs",
   IDENTIFIER_POINTER (DECL_NAME (fndecl)));
   return error_mark_node;
 }
      else
 {
   error ("non-floating-point argument to function %qs",
   IDENTIFIER_POINTER (DECL_NAME (fndecl)));
   return error_mark_node;
 }
    }

  arg = TREE_VALUE (arglist);
  switch (builtin_index)
    {
    case 129:
      if (!HONOR_INFINITIES (TYPE_MODE (TREE_TYPE (arg))))
 return omit_one_operand (type, integer_zero_node, arg);

      if (TREE_CODE (arg) == REAL_CST)
 {
   r = TREE_REAL_CST (arg);
   if (real_isinf (&r))
     return real_compare (GT_EXPR, &r, &dconst0)
     ? integer_one_node : integer_minus_one_node;
   else
     return integer_zero_node;
 }

      return NULL_TREE;

    case 130:
      if (!HONOR_NANS (TYPE_MODE (TREE_TYPE (arg)))
   && !HONOR_INFINITIES (TYPE_MODE (TREE_TYPE (arg))))
 return omit_one_operand (type, integer_one_node, arg);

      if (TREE_CODE (arg) == REAL_CST)
 {
   r = TREE_REAL_CST (arg);
   return real_isinf (&r) || real_isnan (&r)
   ? integer_zero_node : integer_one_node;
 }

      return NULL_TREE;

    case 128:
      if (!HONOR_NANS (TYPE_MODE (TREE_TYPE (arg))))
 return omit_one_operand (type, integer_zero_node, arg);

      if (TREE_CODE (arg) == REAL_CST)
 {
   r = TREE_REAL_CST (arg);
   return real_isnan (&r) ? integer_one_node : integer_zero_node;
 }

      arg = builtin_save_expr (arg);
      return fold_build2 (UNORDERED_EXPR, type, arg, arg);

    default:
      gcc_unreachable ();
    }
}
