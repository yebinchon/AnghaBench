
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {int num; int header; TYPE_1__* single_exit; } ;
typedef int loop_vec_info ;
typedef TYPE_2__* edge ;
typedef int block_stmt_iterator ;
typedef int basic_block ;
struct TYPE_5__ {int dest_idx; int dest; } ;
struct TYPE_4__ {int dest; } ;


 int BSI_SAME_STMT ;
 struct loop* LOOP_VINFO_LOOP (int ) ;
 int MULT_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int PHI_RESULT (scalar_t__) ;
 int PLUS_EXPR ;
 int REPORT_DETAILS ;
 int SET_PHI_ARG_DEF (scalar_t__,int ,scalar_t__) ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ STMT_VINFO_DEF_TYPE (int ) ;
 int TDF_SLIM ;
 int TREE_TYPE (scalar_t__) ;
 int add_referenced_var (scalar_t__) ;
 scalar_t__ analyze_scalar_evolution (struct loop*,int ) ;
 int bsi_insert_before (int *,scalar_t__,int ) ;
 int bsi_last (int ) ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ create_tmp_var (int ,char*) ;
 int evolution_part_in_loop_num (scalar_t__,int ) ;
 scalar_t__ force_gimple_operand (scalar_t__,scalar_t__*,int,scalar_t__) ;
 int fprintf (int ,char*) ;
 int gcc_assert (int) ;
 int initial_condition_in_loop_num (scalar_t__,int ) ;
 int is_gimple_reg (int ) ;
 scalar_t__ phi_nodes (int ) ;
 int print_generic_expr (int ,scalar_t__,int ) ;
 int single_pred_p (int ) ;
 int tree_is_chrec (scalar_t__) ;
 scalar_t__ unshare_expr (int ) ;
 int vect_dump ;
 scalar_t__ vect_print_dump_info (int ) ;
 scalar_t__ vect_reduction_def ;
 int vinfo_for_stmt (scalar_t__) ;

__attribute__((used)) static void
vect_update_ivs_after_vectorizer (loop_vec_info loop_vinfo, tree niters,
      edge update_e)
{
  struct loop *loop = LOOP_VINFO_LOOP (loop_vinfo);
  basic_block exit_bb = loop->single_exit->dest;
  tree phi, phi1;
  basic_block update_bb = update_e->dest;




  gcc_assert (single_pred_p (exit_bb));

  for (phi = phi_nodes (loop->header), phi1 = phi_nodes (update_bb);
       phi && phi1;
       phi = PHI_CHAIN (phi), phi1 = PHI_CHAIN (phi1))
    {
      tree access_fn = ((void*)0);
      tree evolution_part;
      tree init_expr;
      tree step_expr;
      tree var, stmt, ni, ni_name;
      block_stmt_iterator last_bsi;

      if (vect_print_dump_info (REPORT_DETAILS))
        {
          fprintf (vect_dump, "vect_update_ivs_after_vectorizer: phi: ");
          print_generic_expr (vect_dump, phi, TDF_SLIM);
        }


      if (!is_gimple_reg (SSA_NAME_VAR (PHI_RESULT (phi))))
 {
   if (vect_print_dump_info (REPORT_DETAILS))
     fprintf (vect_dump, "virtual phi. skip.");
   continue;
 }


      if (STMT_VINFO_DEF_TYPE (vinfo_for_stmt (phi)) == vect_reduction_def)
        {
          if (vect_print_dump_info (REPORT_DETAILS))
            fprintf (vect_dump, "reduc phi. skip.");
          continue;
        }

      access_fn = analyze_scalar_evolution (loop, PHI_RESULT (phi));
      gcc_assert (access_fn);
      evolution_part =
  unshare_expr (evolution_part_in_loop_num (access_fn, loop->num));
      gcc_assert (evolution_part != NULL_TREE);



      gcc_assert (!tree_is_chrec (evolution_part));

      step_expr = evolution_part;
      init_expr = unshare_expr (initial_condition_in_loop_num (access_fn,
              loop->num));

      ni = build2 (PLUS_EXPR, TREE_TYPE (init_expr),
    build2 (MULT_EXPR, TREE_TYPE (niters),
         niters, step_expr), init_expr);

      var = create_tmp_var (TREE_TYPE (init_expr), "tmp");
      add_referenced_var (var);

      ni_name = force_gimple_operand (ni, &stmt, 0, var);


      last_bsi = bsi_last (exit_bb);
      if (stmt)
        bsi_insert_before (&last_bsi, stmt, BSI_SAME_STMT);


      SET_PHI_ARG_DEF (phi1, update_e->dest_idx, ni_name);
    }
}
