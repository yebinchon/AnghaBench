
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;


 int DECL_SOURCE_LOCATION (int ) ;
 int ENTRY_BLOCK_PTR ;
 int MODIFY_EXPR ;
 int SET_EXPR_LOCATION (int ,int ) ;
 int TREE_TYPE (int ) ;
 int bsi_commit_edge_inserts () ;
 int build2 (int ,int ,int ,int ) ;
 int create_tmp_var (int ,char*) ;
 int current_function_decl ;
 int gimplify_to_stmt_list (int *) ;
 int insert_edge_copies (int ,int ) ;
 int mf_cache_mask_decl ;
 int mf_cache_mask_decl_l ;
 int mf_cache_shift_decl ;
 int mf_cache_shift_decl_l ;
 int mf_mark (int ) ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;

__attribute__((used)) static void
mf_decl_cache_locals (void)
{
  tree t, shift_init_stmts, mask_init_stmts;
  tree_stmt_iterator tsi;


  mf_cache_shift_decl_l
    = mf_mark (create_tmp_var (TREE_TYPE (mf_cache_shift_decl),
                               "__mf_lookup_shift_l"));

  mf_cache_mask_decl_l
    = mf_mark (create_tmp_var (TREE_TYPE (mf_cache_mask_decl),
                               "__mf_lookup_mask_l"));



  t = build2 (MODIFY_EXPR, TREE_TYPE (mf_cache_shift_decl_l),
              mf_cache_shift_decl_l, mf_cache_shift_decl);
  SET_EXPR_LOCATION (t, DECL_SOURCE_LOCATION (current_function_decl));
  gimplify_to_stmt_list (&t);
  shift_init_stmts = t;

  t = build2 (MODIFY_EXPR, TREE_TYPE (mf_cache_mask_decl_l),
              mf_cache_mask_decl_l, mf_cache_mask_decl);
  SET_EXPR_LOCATION (t, DECL_SOURCE_LOCATION (current_function_decl));
  gimplify_to_stmt_list (&t);
  mask_init_stmts = t;



  for (tsi = tsi_start (shift_init_stmts);
       ! tsi_end_p (tsi);
       tsi_next (&tsi))
    insert_edge_copies (tsi_stmt (tsi), ENTRY_BLOCK_PTR);

  for (tsi = tsi_start (mask_init_stmts);
       ! tsi_end_p (tsi);
       tsi_next (&tsi))
    insert_edge_copies (tsi_stmt (tsi), ENTRY_BLOCK_PTR);
  bsi_commit_edge_inserts ();
}
