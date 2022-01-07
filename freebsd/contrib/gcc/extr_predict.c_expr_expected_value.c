
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int bitmap ;


 scalar_t__ BINARY_CLASS_P (int *) ;
 scalar_t__ BUILT_IN_EXPECT ;
 scalar_t__ BUILT_IN_NORMAL ;
 scalar_t__ CALL_EXPR ;
 scalar_t__ COMPARISON_CLASS_P (int *) ;
 scalar_t__ DECL_BUILT_IN_CLASS (int *) ;
 scalar_t__ DECL_FUNCTION_CODE (int *) ;
 scalar_t__ MODIFY_EXPR ;
 int * NULL_TREE ;
 int * PHI_ARG_DEF (int *,int) ;
 scalar_t__ PHI_NODE ;
 int PHI_NUM_ARGS (int *) ;
 int * PHI_RESULT (int *) ;
 scalar_t__ SSA_NAME ;
 int * SSA_NAME_DEF_STMT (int *) ;
 int SSA_NAME_VERSION (int *) ;
 int * TREE_CHAIN (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 scalar_t__ TREE_CONSTANT (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int TREE_TYPE (int *) ;
 int * TREE_VALUE (int *) ;
 scalar_t__ UNARY_CLASS_P (int *) ;
 scalar_t__ bitmap_bit_p (int ,int ) ;
 int bitmap_set_bit (int ,int ) ;
 int * fold_build1 (scalar_t__,int ,int *) ;
 int * fold_build2 (scalar_t__,int ,int *,int *) ;
 int * get_callee_fndecl (int *) ;
 int operand_equal_p (int *,int *,int) ;

__attribute__((used)) static tree
expr_expected_value (tree expr, bitmap visited)
{
  if (TREE_CONSTANT (expr))
    return expr;
  else if (TREE_CODE (expr) == SSA_NAME)
    {
      tree def = SSA_NAME_DEF_STMT (expr);


      if (bitmap_bit_p (visited, SSA_NAME_VERSION (expr)))
 return ((void*)0);
      bitmap_set_bit (visited, SSA_NAME_VERSION (expr));

      if (TREE_CODE (def) == PHI_NODE)
 {


   int i;
   tree val = ((void*)0), new_val;

   for (i = 0; i < PHI_NUM_ARGS (def); i++)
     {
       tree arg = PHI_ARG_DEF (def, i);







       if (arg == PHI_RESULT (def))
  continue;

       new_val = expr_expected_value (arg, visited);
       if (!new_val)
  return ((void*)0);
       if (!val)
  val = new_val;
       else if (!operand_equal_p (val, new_val, 0))
  return ((void*)0);
     }
   return val;
 }
      if (TREE_CODE (def) != MODIFY_EXPR || TREE_OPERAND (def, 0) != expr)
 return ((void*)0);
      return expr_expected_value (TREE_OPERAND (def, 1), visited);
    }
  else if (TREE_CODE (expr) == CALL_EXPR)
    {
      tree decl = get_callee_fndecl (expr);
      if (!decl)
 return ((void*)0);
      if (DECL_BUILT_IN_CLASS (decl) == BUILT_IN_NORMAL
   && DECL_FUNCTION_CODE (decl) == BUILT_IN_EXPECT)
 {
   tree arglist = TREE_OPERAND (expr, 1);
   tree val;

   if (arglist == NULL_TREE
       || TREE_CHAIN (arglist) == NULL_TREE)
     return ((void*)0);
   val = TREE_VALUE (TREE_CHAIN (TREE_OPERAND (expr, 1)));
   if (TREE_CONSTANT (val))
     return val;
   return TREE_VALUE (TREE_CHAIN (TREE_OPERAND (expr, 1)));
 }
    }
  if (BINARY_CLASS_P (expr) || COMPARISON_CLASS_P (expr))
    {
      tree op0, op1, res;
      op0 = expr_expected_value (TREE_OPERAND (expr, 0), visited);
      if (!op0)
 return ((void*)0);
      op1 = expr_expected_value (TREE_OPERAND (expr, 1), visited);
      if (!op1)
 return ((void*)0);
      res = fold_build2 (TREE_CODE (expr), TREE_TYPE (expr), op0, op1);
      if (TREE_CONSTANT (res))
 return res;
      return ((void*)0);
    }
  if (UNARY_CLASS_P (expr))
    {
      tree op0, res;
      op0 = expr_expected_value (TREE_OPERAND (expr, 0), visited);
      if (!op0)
 return ((void*)0);
      res = fold_build1 (TREE_CODE (expr), TREE_TYPE (expr), op0);
      if (TREE_CONSTANT (res))
 return res;
      return ((void*)0);
    }
  return ((void*)0);
}
