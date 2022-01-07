
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;
typedef int edge ;
typedef int block_stmt_iterator ;


 scalar_t__ COND_EXPR ;
 int COND_EXPR_COND (int ) ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int add_to_dst_predicate_list (struct loop*,int ,int ,int ,int *) ;
 int bb_for_stmt (int ) ;
 int bb_with_exit_edge_p (struct loop*,int ) ;
 int bsi_remove (int *,int) ;
 int extract_true_false_edges_from_block (int ,int *,int *) ;
 int gcc_assert (int) ;
 int invert_truthvalue (int ) ;
 int unshare_expr (int ) ;

__attribute__((used)) static void
tree_if_convert_cond_expr (struct loop *loop, tree stmt, tree cond,
      block_stmt_iterator *bsi)
{
  tree c, c2;
  edge true_edge, false_edge;

  gcc_assert (TREE_CODE (stmt) == COND_EXPR);

  c = COND_EXPR_COND (stmt);

  extract_true_false_edges_from_block (bb_for_stmt (stmt),
            &true_edge, &false_edge);




  add_to_dst_predicate_list (loop, true_edge, cond,
        unshare_expr (c), bsi);


  c2 = invert_truthvalue (unshare_expr (c));
  add_to_dst_predicate_list (loop, false_edge, cond, c2, bsi);




  if (!bb_with_exit_edge_p (loop, bb_for_stmt (stmt)))
    {
      bsi_remove (bsi, 1);
      cond = NULL_TREE;
    }
  return;
}
