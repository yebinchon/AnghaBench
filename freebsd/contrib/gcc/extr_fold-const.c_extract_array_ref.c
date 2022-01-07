
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ARRAY_REF ;
 scalar_t__ ARRAY_TYPE ;
 scalar_t__ MULT_EXPR ;
 int NULL_TREE ;
 scalar_t__ PLUS_EXPR ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ SSA_VAR_P (int ) ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int array_ref_element_size (int ) ;
 int fold_build2 (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static bool
extract_array_ref (tree expr, tree *base, tree *offset)
{



  if (TREE_CODE (expr) == PLUS_EXPR)
    {
      tree op0 = TREE_OPERAND (expr, 0);
      tree inner_base, dummy1;


      STRIP_NOPS (op0);
      if (extract_array_ref (op0, &inner_base, &dummy1))
 {
   *base = inner_base;
   if (dummy1 == NULL_TREE)
     *offset = TREE_OPERAND (expr, 1);
   else
     *offset = fold_build2 (PLUS_EXPR, TREE_TYPE (expr),
       dummy1, TREE_OPERAND (expr, 1));
   return 1;
 }
    }





  else if (TREE_CODE (expr) == ADDR_EXPR)
    {
      tree op0 = TREE_OPERAND (expr, 0);
      if (TREE_CODE (op0) == ARRAY_REF)
 {
   tree idx = TREE_OPERAND (op0, 1);
   *base = TREE_OPERAND (op0, 0);
   *offset = fold_build2 (MULT_EXPR, TREE_TYPE (idx), idx,
     array_ref_element_size (op0));
 }
      else
 {

   if (TREE_CODE (TREE_TYPE (op0)) == ARRAY_TYPE)
     *base = TREE_OPERAND (expr, 0);
   else
     *base = expr;
   *offset = NULL_TREE;
 }
      return 1;
    }

  else if (SSA_VAR_P (expr)
    && TREE_CODE (TREE_TYPE (expr)) == POINTER_TYPE)
    {
      *base = expr;
      *offset = NULL_TREE;
      return 1;
    }

  return 0;
}
