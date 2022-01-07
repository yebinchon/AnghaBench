
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef int basic_block ;
struct TYPE_5__ {int dest; int flags; } ;


 int BSI_NEW_STMT ;
 int CDI_DOMINATORS ;
 int COND_EXPR ;
 int EDGE_FALLTHRU ;
 int EDGE_FALSE_VALUE ;
 TYPE_1__* EDGE_SUCC (int ,int ) ;
 int EDGE_TRUE_VALUE ;
 int GOTO_EXPR ;
 int bsi_insert_after (int *,int ,int ) ;
 int bsi_last (int ) ;
 int build1 (int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 TYPE_1__* make_edge (int ,int ,int ) ;
 int set_immediate_dominator (int ,int ,int ) ;
 int tree_block_label (int ) ;
 int void_type_node ;

__attribute__((used)) static edge
slpeel_add_loop_guard (basic_block guard_bb, tree cond, basic_block exit_bb,
          basic_block dom_bb)
{
  block_stmt_iterator bsi;
  edge new_e, enter_e;
  tree cond_stmt, then_label, else_label;

  enter_e = EDGE_SUCC (guard_bb, 0);
  enter_e->flags &= ~EDGE_FALLTHRU;
  enter_e->flags |= EDGE_FALSE_VALUE;
  bsi = bsi_last (guard_bb);

  then_label = build1 (GOTO_EXPR, void_type_node,
                       tree_block_label (exit_bb));
  else_label = build1 (GOTO_EXPR, void_type_node,
                       tree_block_label (enter_e->dest));
  cond_stmt = build3 (COND_EXPR, void_type_node, cond,
          then_label, else_label);
  bsi_insert_after (&bsi, cond_stmt, BSI_NEW_STMT);

  new_e = make_edge (guard_bb, exit_bb, EDGE_TRUE_VALUE);
  set_immediate_dominator (CDI_DOMINATORS, exit_bb, dom_bb);
  return new_e;
}
