
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPONENT_REF ;
 scalar_t__ CONVERT_EXPR ;
 int DECL_P (int ) ;
 scalar_t__ NON_LVALUE_EXPR ;
 scalar_t__ NOP_EXPR ;
 int NULL_TREE ;
 scalar_t__ SAVE_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VIEW_CONVERT_EXPR ;
 int build3 (scalar_t__,int ,int ,int ,int ) ;

__attribute__((used)) static tree
component_ref_for_mem_expr (tree ref)
{
  tree inner = TREE_OPERAND (ref, 0);

  if (TREE_CODE (inner) == COMPONENT_REF)
    inner = component_ref_for_mem_expr (inner);
  else
    {


      while (TREE_CODE (inner) == NOP_EXPR || TREE_CODE (inner) == CONVERT_EXPR
      || TREE_CODE (inner) == NON_LVALUE_EXPR
      || TREE_CODE (inner) == VIEW_CONVERT_EXPR
      || TREE_CODE (inner) == SAVE_EXPR)
 inner = TREE_OPERAND (inner, 0);

      if (! DECL_P (inner))
 inner = NULL_TREE;
    }

  if (inner == TREE_OPERAND (ref, 0))
    return ref;
  else
    return build3 (COMPONENT_REF, TREE_TYPE (ref), inner,
     TREE_OPERAND (ref, 1), NULL_TREE);
}
