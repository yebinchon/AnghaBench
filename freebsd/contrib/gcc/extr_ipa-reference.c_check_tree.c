
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int ipa_reference_local_vars_info_t ;


 scalar_t__ ARRAY_REF ;
 scalar_t__ EXC_PTR_EXPR ;
 scalar_t__ FILTER_EXPR ;
 scalar_t__ IMAGPART_EXPR ;
 scalar_t__ INDIRECT_REF_P (int ) ;
 scalar_t__ REALPART_EXPR ;
 scalar_t__ SSA_VAR_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int check_operand (int ,int ,int) ;
 scalar_t__ handled_component_p (int ) ;

__attribute__((used)) static void
check_tree (ipa_reference_local_vars_info_t local, tree t, bool checking_write)
{
  if ((TREE_CODE (t) == EXC_PTR_EXPR) || (TREE_CODE (t) == FILTER_EXPR))
    return;

  while (TREE_CODE (t) == REALPART_EXPR
  || TREE_CODE (t) == IMAGPART_EXPR
  || handled_component_p (t))
    {
      if (TREE_CODE (t) == ARRAY_REF)
 check_operand (local, TREE_OPERAND (t, 1), 0);
      t = TREE_OPERAND (t, 0);
    }







  if (INDIRECT_REF_P (t))
    check_tree (local, TREE_OPERAND (t, 0), 0);

  if (SSA_VAR_P (t))
    check_operand (local, t, checking_write);
}
