
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 scalar_t__ CONVERT_EXPR ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ POINTER_TYPE_P (int *) ;
 scalar_t__ SSA_NAME ;
 int * SSA_NAME_DEF_STMT (int *) ;
 int STRIP_USELESS_TYPE_CONVERSION (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int) ;
 int * TREE_TYPE (int *) ;
 scalar_t__ TYPE_PRECISION (int *) ;
 int * build2 (scalar_t__,int *,int *,int *) ;
 int * fold_build1 (scalar_t__,int *,int *) ;
 scalar_t__ is_gimple_val (int *) ;
 scalar_t__ tree_int_cst_equal (int *,int *) ;

__attribute__((used)) static tree
find_equivalent_equality_comparison (tree cond)
{
  tree op0 = TREE_OPERAND (cond, 0);
  tree op1 = TREE_OPERAND (cond, 1);
  tree def_stmt = SSA_NAME_DEF_STMT (op0);

  while (def_stmt
  && TREE_CODE (def_stmt) == MODIFY_EXPR
  && TREE_CODE (TREE_OPERAND (def_stmt, 1)) == SSA_NAME)
    def_stmt = SSA_NAME_DEF_STMT (TREE_OPERAND (def_stmt, 1));



  if (def_stmt && TREE_CODE (def_stmt) == MODIFY_EXPR)
    {
      tree def_rhs = TREE_OPERAND (def_stmt, 1);






      if ((POINTER_TYPE_P (TREE_TYPE (op0))
    && TREE_CODE (TREE_TYPE (TREE_TYPE (op0))) == FUNCTION_TYPE)
   || (POINTER_TYPE_P (TREE_TYPE (op1))
       && TREE_CODE (TREE_TYPE (TREE_TYPE (op1))) == FUNCTION_TYPE))
 return ((void*)0);


      if ((TREE_CODE (def_rhs) == NOP_EXPR
    || TREE_CODE (def_rhs) == CONVERT_EXPR)
   && TREE_CODE (TREE_OPERAND (def_rhs, 0)) == SSA_NAME)
 {
   tree def_rhs_inner = TREE_OPERAND (def_rhs, 0);
   tree def_rhs_inner_type = TREE_TYPE (def_rhs_inner);
   tree new;

   if (TYPE_PRECISION (def_rhs_inner_type)
       > TYPE_PRECISION (TREE_TYPE (def_rhs)))
     return ((void*)0);







   if (POINTER_TYPE_P (def_rhs_inner_type)
       && TREE_CODE (TREE_TYPE (def_rhs_inner_type)) == FUNCTION_TYPE)
     return ((void*)0);
   new = fold_build1 (TREE_CODE (def_rhs), def_rhs_inner_type, op1);
   STRIP_USELESS_TYPE_CONVERSION (new);
   if (is_gimple_val (new) && tree_int_cst_equal (new, op1))
     return build2 (TREE_CODE (cond), TREE_TYPE (cond),
      def_rhs_inner, new);
 }
    }
  return ((void*)0);
}
