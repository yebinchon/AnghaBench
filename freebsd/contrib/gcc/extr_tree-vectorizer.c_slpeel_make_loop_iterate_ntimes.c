
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct loop {int nb_iterations; TYPE_1__* single_exit; int latch; } ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
struct TYPE_2__ {int flags; int dest; } ;
typedef scalar_t__ LOC ;


 int BSI_SAME_STMT ;
 int COND_EXPR ;
 int EDGE_TRUE_VALUE ;
 int GE_EXPR ;
 int GOTO_EXPR ;
 char* LOC_FILE (scalar_t__) ;
 int LOC_LINE (scalar_t__) ;
 int LT_EXPR ;
 int NULL_TREE ;
 int TDF_DETAILS ;
 int TDF_SLIM ;
 int TREE_TYPE (int ) ;
 scalar_t__ UNKNOWN_LOC ;
 int boolean_type_node ;
 int bsi_for_stmt (int ) ;
 int bsi_insert_before (int *,int ,int ) ;
 int bsi_remove (int *,int) ;
 int build1 (int ,int ,int ) ;
 int build2 (int ,int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build_int_cst (int ,int) ;
 int create_iv (int ,int ,int ,struct loop*,int *,int,int *,int *) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ find_loop_location (struct loop*) ;
 int fprintf (scalar_t__,char*,char*,int) ;
 int gcc_assert (int ) ;
 int get_loop_exit_condition (struct loop*) ;
 int print_generic_expr (scalar_t__,int ,int ) ;
 int standard_iv_increment_position (struct loop*,int *,int*) ;
 int tree_block_label (int ) ;
 int void_type_node ;

void
slpeel_make_loop_iterate_ntimes (struct loop *loop, tree niters)
{
  tree indx_before_incr, indx_after_incr, cond_stmt, cond;
  tree orig_cond;
  edge exit_edge = loop->single_exit;
  block_stmt_iterator loop_cond_bsi;
  block_stmt_iterator incr_bsi;
  bool insert_after;
  tree begin_label = tree_block_label (loop->latch);
  tree exit_label = tree_block_label (loop->single_exit->dest);
  tree init = build_int_cst (TREE_TYPE (niters), 0);
  tree step = build_int_cst (TREE_TYPE (niters), 1);
  tree then_label;
  tree else_label;
  LOC loop_loc;

  orig_cond = get_loop_exit_condition (loop);
  gcc_assert (orig_cond);
  loop_cond_bsi = bsi_for_stmt (orig_cond);

  standard_iv_increment_position (loop, &incr_bsi, &insert_after);
  create_iv (init, step, NULL_TREE, loop,
             &incr_bsi, insert_after, &indx_before_incr, &indx_after_incr);

  if (exit_edge->flags & EDGE_TRUE_VALUE)
    {
      cond = build2 (GE_EXPR, boolean_type_node, indx_after_incr, niters);
      then_label = build1 (GOTO_EXPR, void_type_node, exit_label);
      else_label = build1 (GOTO_EXPR, void_type_node, begin_label);
    }
  else
    {
      cond = build2 (LT_EXPR, boolean_type_node, indx_after_incr, niters);
      then_label = build1 (GOTO_EXPR, void_type_node, begin_label);
      else_label = build1 (GOTO_EXPR, void_type_node, exit_label);
    }

  cond_stmt = build3 (COND_EXPR, TREE_TYPE (orig_cond), cond,
       then_label, else_label);
  bsi_insert_before (&loop_cond_bsi, cond_stmt, BSI_SAME_STMT);


  bsi_remove (&loop_cond_bsi, 1);

  loop_loc = find_loop_location (loop);
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      if (loop_loc != UNKNOWN_LOC)
        fprintf (dump_file, "\nloop at %s:%d: ",
                 LOC_FILE (loop_loc), LOC_LINE (loop_loc));
      print_generic_expr (dump_file, cond_stmt, TDF_SLIM);
    }

  loop->nb_iterations = niters;
}
