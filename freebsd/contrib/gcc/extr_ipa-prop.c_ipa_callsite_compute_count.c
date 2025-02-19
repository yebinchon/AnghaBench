
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct cgraph_edge {int dummy; } ;


 scalar_t__ CALL_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int gcc_assert (int) ;
 scalar_t__ get_call_expr_in (int ) ;
 int ipa_callsite_param_count_set (struct cgraph_edge*,int) ;
 int ipa_callsite_tree (struct cgraph_edge*) ;

void
ipa_callsite_compute_count (struct cgraph_edge *cs)
{
  tree call_tree;
  tree arg;
  int arg_num;

  call_tree = get_call_expr_in (ipa_callsite_tree (cs));
  gcc_assert (TREE_CODE (call_tree) == CALL_EXPR);
  arg = TREE_OPERAND (call_tree, 1);
  arg_num = 0;
  for (; arg != NULL_TREE; arg = TREE_CHAIN (arg))
    arg_num++;
  ipa_callsite_param_count_set (cs, arg_num);
}
