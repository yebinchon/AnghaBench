
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int tree ;
struct loop {TYPE_2__* header; } ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef TYPE_2__* basic_block ;
struct TYPE_10__ {int aux; int preds; } ;
struct TYPE_9__ {TYPE_2__* src; scalar_t__ aux; } ;


 int BSI_SAME_STMT ;
 int CDI_DOMINATORS ;
 int EDGE_COUNT (int ) ;
 TYPE_1__* EDGE_PRED (TYPE_2__*,int) ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int) ;
 int TREE_OPERAND (int,int ) ;
 int TREE_TYPE (int) ;
 int TRUTH_AND_EXPR ;
 scalar_t__ TRUTH_NOT_EXPR ;
 int boolean_type_node ;
 int bsi_insert_before (int *,int,int ) ;
 int build2 (int ,int ,int,scalar_t__) ;
 scalar_t__ dominated_by_p (int ,TYPE_2__*,TYPE_2__*) ;
 int force_gimple_operand (int ,int*,int,int ) ;
 int gcc_assert (int) ;
 int ifc_temp_var (int ,int ) ;
 int invert_truthvalue (int) ;
 int is_gimple_condexpr (int) ;
 int is_gimple_reg (int) ;
 int unshare_expr (int) ;

__attribute__((used)) static basic_block
find_phi_replacement_condition (struct loop *loop,
    basic_block bb, tree *cond,
                                block_stmt_iterator *bsi)
{
  edge first_edge, second_edge;
  tree tmp_cond, new_stmts;

  gcc_assert (EDGE_COUNT (bb->preds) == 2);
  first_edge = EDGE_PRED (bb, 0);
  second_edge = EDGE_PRED (bb, 1);
  tmp_cond = (first_edge->src)->aux;
  if (TREE_CODE (tmp_cond) == TRUTH_NOT_EXPR)
    {
      edge tmp_edge;

      tmp_edge = first_edge;
      first_edge = second_edge;
      second_edge = tmp_edge;
    }



  if (first_edge->src == loop->header
      || dominated_by_p (CDI_DOMINATORS,
    second_edge->src, first_edge->src))
    {
      *cond = (second_edge->src)->aux;



      if (second_edge->aux)
 *cond = build2 (TRUTH_AND_EXPR, boolean_type_node,
   *cond, second_edge->aux);

      if (TREE_CODE (*cond) == TRUTH_NOT_EXPR)


 *cond = invert_truthvalue (*cond);
      else

 first_edge = second_edge;
    }
  else
    {

      *cond = (first_edge->src)->aux;



      if (first_edge->aux)
 *cond = build2 (TRUTH_AND_EXPR, boolean_type_node,
   *cond, first_edge->aux);
    }






  *cond = force_gimple_operand (unshare_expr (*cond), &new_stmts,
    0, NULL_TREE);
  if (new_stmts)
    bsi_insert_before (bsi, new_stmts, BSI_SAME_STMT);
  if (!is_gimple_reg (*cond) && !is_gimple_condexpr (*cond))
    {
      tree new_stmt;

      new_stmt = ifc_temp_var (TREE_TYPE (*cond), unshare_expr (*cond));
      bsi_insert_before (bsi, new_stmt, BSI_SAME_STMT);
      *cond = TREE_OPERAND (new_stmt, 0);
    }

  gcc_assert (*cond);

  return first_edge->src;
}
