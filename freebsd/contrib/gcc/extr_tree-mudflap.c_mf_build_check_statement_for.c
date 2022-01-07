
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int tree_stmt_iterator ;
typedef int tree ;
typedef int location_t ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef TYPE_2__* basic_block ;
struct TYPE_23__ {int count; } ;
struct TYPE_22__ {int probability; int count; int flags; TYPE_2__* dest; TYPE_2__* src; } ;


 int ADDR_EXPR ;
 int ARRAY_REF ;
 int BIT_AND_EXPR ;
 int BSI_CONTINUE_LINKING ;
 int CDI_DOMINATORS ;
 int COMPONENT_REF ;
 int COND_EXPR ;
 int EDGE_FALLTHRU ;
 int EDGE_FALSE_VALUE ;
 int EDGE_TRUE_VALUE ;
 int GOTO_EXPR ;
 int GT_EXPR ;
 int INDIRECT_REF ;
 int LT_EXPR ;
 int MINUS_EXPR ;
 int MODIFY_EXPR ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 int REG_BR_PROB_BASE ;
 int RSHIFT_EXPR ;
 int SET_EXPR_LOCUS (int ,int *) ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TRUTH_OR_EXPR ;
 int TSI_CONTINUE_LINKING ;
 int TYPE_FIELDS (int ) ;
 int UNKNOWN_LOCATION ;
 TYPE_2__* bb_for_stmt (int ) ;
 int boolean_type_node ;
 int bsi_end_p (int ) ;
 int bsi_insert_after (int *,int ,int ) ;
 int bsi_last (TYPE_2__*) ;
 int bsi_next (int *) ;
 int bsi_prev (int *) ;
 int bsi_start (TYPE_2__*) ;
 int bsi_stmt (int ) ;
 int build1 (int ,int ,int ) ;
 int build2 (int ,int ,int ,int ) ;
 int build3 (int ,int ,int ,int ,int ) ;
 int build4 (int ,int ,int ,int ,int ,int ) ;
 int build_function_call_expr (int ,int ) ;
 int convert (int ,int ) ;
 TYPE_2__* create_empty_bb (TYPE_2__*) ;
 int create_tmp_var (int ,char*) ;
 scalar_t__ dom_info_available_p (int ) ;
 TYPE_1__* find_edge (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ flag_mudflap_threads ;
 int fold_build2 (int ,int ,int ,int ) ;
 int gimplify_to_stmt_list (int *) ;
 int integer_one_node ;
 int integer_type_node ;
 int make_edge (TYPE_2__*,TYPE_2__*,int ) ;
 int make_single_succ_edge (TYPE_2__*,TYPE_2__*,int ) ;
 int mf_cache_array_decl ;
 int mf_cache_mask_decl ;
 int mf_cache_mask_decl_l ;
 int mf_cache_shift_decl ;
 int mf_cache_shift_decl_l ;
 int mf_cache_struct_type ;
 int mf_cache_structptr_type ;
 int mf_check_fndecl ;
 int mf_file_function_line_tree (int ) ;
 int mf_uintptr_type ;
 int set_immediate_dominator (int ,TYPE_2__*,TYPE_2__*) ;
 TYPE_1__* split_block (TYPE_2__*,int ) ;
 TYPE_1__* split_block_after_labels (TYPE_2__*) ;
 int tree_block_label (TYPE_2__*) ;
 int tree_cons (int ,int ,int ) ;
 int tsi_end_p (int ) ;
 int tsi_last (int ) ;
 int tsi_link_after (int *,int ,int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;
 int unshare_expr (int ) ;
 int void_type_node ;

__attribute__((used)) static void
mf_build_check_statement_for (tree base, tree limit,
                              block_stmt_iterator *instr_bsi,
                              location_t *locus, tree dirflag)
{
  tree_stmt_iterator head, tsi;
  block_stmt_iterator bsi;
  basic_block cond_bb, then_bb, join_bb;
  edge e;
  tree cond, t, u, v;
  tree mf_base;
  tree mf_elem;
  tree mf_limit;





  cond_bb = bb_for_stmt (bsi_stmt (*instr_bsi));
  bsi = *instr_bsi;
  bsi_prev (&bsi);
  if (! bsi_end_p (bsi))
    e = split_block (cond_bb, bsi_stmt (bsi));
  else
    e = split_block_after_labels (cond_bb);
  cond_bb = e->src;
  join_bb = e->dest;
  then_bb = create_empty_bb (cond_bb);
  make_edge (cond_bb, then_bb, EDGE_TRUE_VALUE);
  make_single_succ_edge (then_bb, join_bb, EDGE_FALLTHRU);


  e = find_edge (cond_bb, join_bb);
  e->flags = EDGE_FALSE_VALUE;
  e->count = cond_bb->count;
  e->probability = REG_BR_PROB_BASE;



  if (dom_info_available_p (CDI_DOMINATORS))
    {
      set_immediate_dominator (CDI_DOMINATORS, then_bb, cond_bb);
      set_immediate_dominator (CDI_DOMINATORS, join_bb, cond_bb);
    }


  mf_elem = create_tmp_var (mf_cache_structptr_type, "__mf_elem");
  mf_base = create_tmp_var (mf_uintptr_type, "__mf_base");
  mf_limit = create_tmp_var (mf_uintptr_type, "__mf_limit");


  t = build2 (MODIFY_EXPR, void_type_node, mf_base,
              convert (mf_uintptr_type, unshare_expr (base)));
  SET_EXPR_LOCUS (t, locus);
  gimplify_to_stmt_list (&t);
  head = tsi_start (t);
  tsi = tsi_last (t);


  t = build2 (MODIFY_EXPR, void_type_node, mf_limit,
              convert (mf_uintptr_type, unshare_expr (limit)));
  SET_EXPR_LOCUS (t, locus);
  gimplify_to_stmt_list (&t);
  tsi_link_after (&tsi, t, TSI_CONTINUE_LINKING);



  t = build2 (RSHIFT_EXPR, mf_uintptr_type, mf_base,
              (flag_mudflap_threads ? mf_cache_shift_decl : mf_cache_shift_decl_l));
  t = build2 (BIT_AND_EXPR, mf_uintptr_type, t,
              (flag_mudflap_threads ? mf_cache_mask_decl : mf_cache_mask_decl_l));
  t = build4 (ARRAY_REF,
              TREE_TYPE (TREE_TYPE (mf_cache_array_decl)),
              mf_cache_array_decl, t, NULL_TREE, NULL_TREE);
  t = build1 (ADDR_EXPR, mf_cache_structptr_type, t);
  t = build2 (MODIFY_EXPR, void_type_node, mf_elem, t);
  SET_EXPR_LOCUS (t, locus);
  gimplify_to_stmt_list (&t);
  tsi_link_after (&tsi, t, TSI_CONTINUE_LINKING);
  t = build3 (COMPONENT_REF, mf_uintptr_type,
              build1 (INDIRECT_REF, mf_cache_struct_type, mf_elem),
              TYPE_FIELDS (mf_cache_struct_type), NULL_TREE);
  t = build2 (GT_EXPR, boolean_type_node, t, mf_base);
  u = build3 (COMPONENT_REF, mf_uintptr_type,
              build1 (INDIRECT_REF, mf_cache_struct_type, mf_elem),
              TREE_CHAIN (TYPE_FIELDS (mf_cache_struct_type)), NULL_TREE);

  v = mf_limit;

  u = build2 (LT_EXPR, boolean_type_node, u, v);




  t = build2 (TRUTH_OR_EXPR, boolean_type_node, t, u);
  cond = create_tmp_var (boolean_type_node, "__mf_unlikely_cond");
  t = build2 (MODIFY_EXPR, boolean_type_node, cond, t);
  gimplify_to_stmt_list (&t);
  tsi_link_after (&tsi, t, TSI_CONTINUE_LINKING);



  t = build3 (COND_EXPR, void_type_node, cond,
              build1 (GOTO_EXPR, void_type_node, tree_block_label (then_bb)),
              build1 (GOTO_EXPR, void_type_node, tree_block_label (join_bb)));
  SET_EXPR_LOCUS (t, locus);
  tsi_link_after (&tsi, t, TSI_CONTINUE_LINKING);
  bsi = bsi_last (cond_bb);
  for (tsi = head; ! tsi_end_p (tsi); tsi_next (&tsi))
    bsi_insert_after (&bsi, tsi_stmt (tsi), BSI_CONTINUE_LINKING);
  u = tree_cons (NULL_TREE,
                 mf_file_function_line_tree (locus == ((void*)0) ? UNKNOWN_LOCATION
                                             : *locus),
                 NULL_TREE);
  u = tree_cons (NULL_TREE, dirflag, u);

  u = tree_cons (NULL_TREE,
                 fold_build2 (PLUS_EXPR, integer_type_node,
         fold_build2 (MINUS_EXPR, mf_uintptr_type, mf_limit, mf_base),
         integer_one_node),
                 u);
  u = tree_cons (NULL_TREE, mf_base, u);
  t = build_function_call_expr (mf_check_fndecl, u);
  gimplify_to_stmt_list (&t);
  head = tsi_start (t);
  tsi = tsi_last (t);

  if (! flag_mudflap_threads)
    {
      t = build2 (MODIFY_EXPR, void_type_node,
                  mf_cache_shift_decl_l, mf_cache_shift_decl);
      tsi_link_after (&tsi, t, TSI_CONTINUE_LINKING);

      t = build2 (MODIFY_EXPR, void_type_node,
                  mf_cache_mask_decl_l, mf_cache_mask_decl);
      tsi_link_after (&tsi, t, TSI_CONTINUE_LINKING);
    }


  bsi = bsi_start (then_bb);
  for (tsi = head; ! tsi_end_p (tsi); tsi_next (&tsi))
    bsi_insert_after (&bsi, tsi_stmt (tsi), BSI_CONTINUE_LINKING);

  *instr_bsi = bsi_start (join_bb);
  bsi_next (instr_bsi);
}
