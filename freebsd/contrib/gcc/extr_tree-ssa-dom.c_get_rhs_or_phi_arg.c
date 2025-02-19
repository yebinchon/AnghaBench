
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ MODIFY_EXPR ;
 scalar_t__ PHI_NODE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int degenerate_phi_result (int ) ;
 int gcc_unreachable () ;

__attribute__((used)) static tree
get_rhs_or_phi_arg (tree t)
{
  if (TREE_CODE (t) == PHI_NODE)
    return degenerate_phi_result (t);
  else if (TREE_CODE (t) == MODIFY_EXPR)
    return TREE_OPERAND (t, 1);
  gcc_unreachable ();
}
