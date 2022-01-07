
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ARRAY_REF ;
 scalar_t__ EXC_PTR_EXPR ;
 scalar_t__ FILTER_EXPR ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ IMAGPART_EXPR ;
 scalar_t__ INDIRECT_REF_P (int ) ;
 scalar_t__ REALPART_EXPR ;
 scalar_t__ SSA_VAR_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int check_operand (int ) ;
 scalar_t__ handled_component_p (int ) ;

__attribute__((used)) static void
check_tree (tree t)
{
  if ((TREE_CODE (t) == EXC_PTR_EXPR) || (TREE_CODE (t) == FILTER_EXPR))
    return;

  while (TREE_CODE (t) == REALPART_EXPR
  || TREE_CODE (t) == IMAGPART_EXPR
  || handled_component_p (t))
    {
      if (TREE_CODE (t) == ARRAY_REF)
 check_operand (TREE_OPERAND (t, 1));
      t = TREE_OPERAND (t, 0);
    }

  if (INDIRECT_REF_P (t))

    check_tree (TREE_OPERAND (t, 0));

  if (SSA_VAR_P (t) || (TREE_CODE (t) == FUNCTION_DECL))
    check_operand (t);
}
