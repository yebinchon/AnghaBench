
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {int dummy; } ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
struct TYPE_3__ {int dest; scalar_t__ aux; } ;


 int BSI_SAME_STMT ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int TRUTH_AND_EXPR ;
 int add_to_predicate_list (int ,scalar_t__) ;
 scalar_t__ boolean_true_node ;
 int boolean_type_node ;
 int bsi_insert_before (int *,scalar_t__,int ) ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 int flow_bb_inside_loop_p (struct loop*,int ) ;
 scalar_t__ force_gimple_operand (scalar_t__,scalar_t__*,int,int *) ;
 scalar_t__ ifc_temp_var (int ,scalar_t__) ;
 scalar_t__ unshare_expr (scalar_t__) ;

__attribute__((used)) static tree
add_to_dst_predicate_list (struct loop * loop, edge e,
      tree prev_cond, tree cond,
      block_stmt_iterator *bsi)
{
  tree new_cond = NULL_TREE;

  if (!flow_bb_inside_loop_p (loop, e->dest))
    return NULL_TREE;

  if (prev_cond == boolean_true_node || !prev_cond)
    new_cond = unshare_expr (cond);
  else
    {
      tree tmp;
      tree tmp_stmt = NULL_TREE;
      tree tmp_stmts1 = NULL_TREE;
      tree tmp_stmts2 = NULL_TREE;
      prev_cond = force_gimple_operand (unshare_expr (prev_cond),
     &tmp_stmts1, 1, ((void*)0));
      if (tmp_stmts1)
        bsi_insert_before (bsi, tmp_stmts1, BSI_SAME_STMT);

      cond = force_gimple_operand (unshare_expr (cond),
       &tmp_stmts2, 1, ((void*)0));
      if (tmp_stmts2)
        bsi_insert_before (bsi, tmp_stmts2, BSI_SAME_STMT);




      e->aux = cond;


      tmp = build2 (TRUTH_AND_EXPR, boolean_type_node,
      unshare_expr (prev_cond), cond);
      tmp_stmt = ifc_temp_var (boolean_type_node, tmp);
      bsi_insert_before (bsi, tmp_stmt, BSI_SAME_STMT);
      new_cond = TREE_OPERAND (tmp_stmt, 0);
    }
  add_to_predicate_list (e->dest, new_cond);
  return new_cond;
}
