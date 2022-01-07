
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tree ;
typedef void* gcov_type ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef TYPE_2__* basic_block ;
struct TYPE_11__ {void* count; } ;
struct TYPE_10__ {int probability; void* count; int flags; TYPE_2__* dest; } ;


 int BIT_AND_EXPR ;
 int BSI_SAME_STMT ;
 int COND_EXPR ;
 int EDGE_FALLTHRU ;
 int EDGE_FALSE_VALUE ;
 int EDGE_TRUE_VALUE ;
 int GOTO_EXPR ;
 int LABEL_EXPR ;
 int MODIFY_EXPR ;
 int NE_EXPR ;
 int PLUS_EXPR ;
 void* REG_BR_PROB_BASE ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 TYPE_2__* bb_for_stmt (int ) ;
 int boolean_type_node ;
 int bsi_for_stmt (int ) ;
 int bsi_insert_before (int *,int ,int ) ;
 int build1 (int ,int ,int ) ;
 int build2 (int ,int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build_int_cst (int ,int) ;
 int create_artificial_label () ;
 int create_tmp_var (int ,char*) ;
 TYPE_1__* make_edge (TYPE_2__*,TYPE_2__*,int ) ;
 int remove_edge (TYPE_1__*) ;
 TYPE_1__* split_block (TYPE_2__*,int ) ;
 int void_type_node ;

__attribute__((used)) static tree
tree_mod_pow2 (tree stmt, tree operation, tree op1, tree op2, int prob,
        gcov_type count, gcov_type all)
{
  tree stmt1, stmt2, stmt3, stmt4;
  tree tmp2, tmp3;
  tree label_decl1 = create_artificial_label ();
  tree label_decl2 = create_artificial_label ();
  tree label_decl3 = create_artificial_label ();
  tree label1, label2, label3;
  tree bb1end, bb2end, bb3end;
  basic_block bb, bb2, bb3, bb4;
  tree optype = TREE_TYPE (operation);
  edge e12, e13, e23, e24, e34;
  block_stmt_iterator bsi;
  tree result = create_tmp_var (optype, "PROF");

  bb = bb_for_stmt (stmt);
  bsi = bsi_for_stmt (stmt);

  tmp2 = create_tmp_var (optype, "PROF");
  tmp3 = create_tmp_var (optype, "PROF");
  stmt2 = build2 (MODIFY_EXPR, optype, tmp2,
    build2 (PLUS_EXPR, optype, op2, build_int_cst (optype, -1)));
  stmt3 = build2 (MODIFY_EXPR, optype, tmp3,
    build2 (BIT_AND_EXPR, optype, tmp2, op2));
  stmt4 = build3 (COND_EXPR, void_type_node,
    build2 (NE_EXPR, boolean_type_node,
     tmp3, build_int_cst (optype, 0)),
    build1 (GOTO_EXPR, void_type_node, label_decl2),
     build1 (GOTO_EXPR, void_type_node, label_decl1));
  bsi_insert_before (&bsi, stmt2, BSI_SAME_STMT);
  bsi_insert_before (&bsi, stmt3, BSI_SAME_STMT);
  bsi_insert_before (&bsi, stmt4, BSI_SAME_STMT);
  bb1end = stmt4;


  label1 = build1 (LABEL_EXPR, void_type_node, label_decl1);
  stmt1 = build2 (MODIFY_EXPR, optype, result,
    build2 (BIT_AND_EXPR, optype, op1, tmp2));
  bsi_insert_before (&bsi, label1, BSI_SAME_STMT);
  bsi_insert_before (&bsi, stmt1, BSI_SAME_STMT);
  bb2end = stmt1;

  label2 = build1 (LABEL_EXPR, void_type_node, label_decl2);
  stmt1 = build2 (MODIFY_EXPR, optype, result,
    build2 (TREE_CODE (operation), optype, op1, op2));
  bsi_insert_before (&bsi, label2, BSI_SAME_STMT);
  bsi_insert_before (&bsi, stmt1, BSI_SAME_STMT);
  bb3end = stmt1;

  label3 = build1 (LABEL_EXPR, void_type_node, label_decl3);
  bsi_insert_before (&bsi, label3, BSI_SAME_STMT);



  e12 = split_block (bb, bb1end);
  bb2 = e12->dest;
  bb2->count = count;
  e23 = split_block (bb2, bb2end);
  bb3 = e23->dest;
  bb3->count = all - count;
  e34 = split_block (bb3, bb3end);
  bb4 = e34->dest;
  bb4->count = all;

  e12->flags &= ~EDGE_FALLTHRU;
  e12->flags |= EDGE_FALSE_VALUE;
  e12->probability = prob;
  e12->count = count;

  e13 = make_edge (bb, bb3, EDGE_TRUE_VALUE);
  e13->probability = REG_BR_PROB_BASE - prob;
  e13->count = all - count;

  remove_edge (e23);

  e24 = make_edge (bb2, bb4, EDGE_FALLTHRU);
  e24->probability = REG_BR_PROB_BASE;
  e24->count = count;

  e34->probability = REG_BR_PROB_BASE;
  e34->count = all - count;

  return result;
}
