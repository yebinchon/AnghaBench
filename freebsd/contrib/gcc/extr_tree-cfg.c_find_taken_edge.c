
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int * edge ;
typedef int basic_block ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ COND_EXPR ;
 scalar_t__ LABEL_DECL ;
 scalar_t__ LABEL_EXPR ;
 scalar_t__ SWITCH_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 scalar_t__ computed_goto_p (int ) ;
 int * find_taken_edge_computed_goto (int ,int ) ;
 int * find_taken_edge_cond_expr (int ,int ) ;
 int * find_taken_edge_switch_expr (int ,int ) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 int is_ctrl_stmt (int ) ;
 int is_gimple_min_invariant (int ) ;
 int last_stmt (int ) ;

edge
find_taken_edge (basic_block bb, tree val)
{
  tree stmt;

  stmt = last_stmt (bb);

  gcc_assert (stmt);
  gcc_assert (is_ctrl_stmt (stmt));
  gcc_assert (val);

  if (! is_gimple_min_invariant (val))
    return ((void*)0);

  if (TREE_CODE (stmt) == COND_EXPR)
    return find_taken_edge_cond_expr (bb, val);

  if (TREE_CODE (stmt) == SWITCH_EXPR)
    return find_taken_edge_switch_expr (bb, val);

  if (computed_goto_p (stmt))
    {






      if ((TREE_CODE (val) == ADDR_EXPR || TREE_CODE (val) == LABEL_EXPR)
   && TREE_CODE (TREE_OPERAND (val, 0)) == LABEL_DECL)
 return find_taken_edge_computed_goto (bb, TREE_OPERAND (val, 0));
      return ((void*)0);
    }

  gcc_unreachable ();
}
