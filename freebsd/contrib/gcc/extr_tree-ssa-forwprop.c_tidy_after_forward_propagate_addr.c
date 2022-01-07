
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int bb_for_stmt (int ) ;
 int cfg_changed ;
 int mark_new_vars_to_rename (int ) ;
 scalar_t__ maybe_clean_or_replace_eh_stmt (int ,int ) ;
 int recompute_tree_invariant_for_addr_expr (int ) ;
 scalar_t__ tree_purge_dead_eh_edges (int ) ;

__attribute__((used)) static void
tidy_after_forward_propagate_addr (tree stmt)
{

  if (maybe_clean_or_replace_eh_stmt (stmt, stmt)
      && tree_purge_dead_eh_edges (bb_for_stmt (stmt)))
    cfg_changed = 1;

  if (TREE_CODE (TREE_OPERAND (stmt, 1)) == ADDR_EXPR)
     recompute_tree_invariant_for_addr_expr (TREE_OPERAND (stmt, 1));

  mark_new_vars_to_rename (stmt);
}
