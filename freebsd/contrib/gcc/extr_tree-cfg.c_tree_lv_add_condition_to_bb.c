
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef int basic_block ;
struct TYPE_3__ {int flags; } ;


 int BSI_NEW_STMT ;
 int COND_EXPR ;
 int EDGE_FALLTHRU ;
 int EDGE_FALSE_VALUE ;
 int GOTO_EXPR ;
 int NULL_TREE ;
 int bsi_insert_after (int *,int ,int ) ;
 int bsi_start (int ) ;
 int build1 (int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 TYPE_1__* single_succ_edge (int ) ;
 int tree_block_label (int ) ;
 int void_type_node ;

__attribute__((used)) static void
tree_lv_add_condition_to_bb (basic_block first_head, basic_block second_head,
                            basic_block cond_bb, void *cond_e)
{
  block_stmt_iterator bsi;
  tree goto1 = NULL_TREE;
  tree goto2 = NULL_TREE;
  tree new_cond_expr = NULL_TREE;
  tree cond_expr = (tree) cond_e;
  edge e0;


  goto1 = build1 (GOTO_EXPR, void_type_node, tree_block_label (first_head));
  goto2 = build1 (GOTO_EXPR, void_type_node, tree_block_label (second_head));
  new_cond_expr = build3 (COND_EXPR, void_type_node, cond_expr, goto1, goto2);


  bsi = bsi_start (cond_bb);
  bsi_insert_after (&bsi, new_cond_expr, BSI_NEW_STMT);


  e0 = single_succ_edge (cond_bb);
  e0->flags &= ~EDGE_FALLTHRU;
  e0->flags |= EDGE_FALSE_VALUE;
}
