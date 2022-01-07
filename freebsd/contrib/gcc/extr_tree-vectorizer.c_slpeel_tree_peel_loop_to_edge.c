
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loops {int dummy; } ;
struct loop {scalar_t__ single_exit; int outer; } ;
typedef scalar_t__ edge ;
typedef int bitmap ;
typedef int basic_block ;
typedef scalar_t__ LOC ;


 int BITMAP_FREE (int ) ;
 int EQ_EXPR ;
 int LE_EXPR ;
 char* LOC_FILE (scalar_t__) ;
 int LOC_LINE (scalar_t__) ;
 int TDF_DETAILS ;
 int TREE_TYPE (int ) ;
 scalar_t__ UNKNOWN_LOC ;
 int add_bb_to_loop (int ,int ) ;
 int boolean_type_node ;
 int build_int_cst (int ,int ) ;
 int delete_update_ssa () ;
 scalar_t__ dump_file ;
 int dump_flags ;
 scalar_t__ find_loop_location (struct loop*) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fprintf (scalar_t__,char*,...) ;
 scalar_t__ loop_preheader_edge (struct loop*) ;
 int rename_variables_in_loop (struct loop*) ;
 scalar_t__ slpeel_add_loop_guard (int ,int ,int ,int ) ;
 int slpeel_can_duplicate_loop_p (struct loop*,scalar_t__) ;
 int slpeel_make_loop_iterate_ntimes (struct loop*,int ) ;
 struct loop* slpeel_tree_duplicate_loop_to_edge_cfg (struct loop*,struct loops*,scalar_t__) ;
 int slpeel_update_phi_nodes_for_guard1 (scalar_t__,struct loop*,int,int *,int *) ;
 int slpeel_update_phi_nodes_for_guard2 (scalar_t__,struct loop*,int,int *) ;
 int slpeel_update_phis_for_duplicate_loop (struct loop*,struct loop*,int) ;
 int split_edge (scalar_t__) ;
 int ssa_names_to_replace () ;
 int tree_register_cfg_hooks () ;

struct loop*
slpeel_tree_peel_loop_to_edge (struct loop *loop, struct loops *loops,
          edge e, tree first_niters,
          tree niters, bool update_first_loop_count)
{
  struct loop *new_loop = ((void*)0), *first_loop, *second_loop;
  edge skip_e;
  tree pre_condition;
  bitmap definitions;
  basic_block bb_before_second_loop, bb_after_second_loop;
  basic_block bb_before_first_loop;
  basic_block bb_between_loops;
  basic_block new_exit_bb;
  edge exit_e = loop->single_exit;
  LOC loop_loc;

  if (!slpeel_can_duplicate_loop_p (loop, e))
    return ((void*)0);





  tree_register_cfg_hooks ();
  if (!(new_loop = slpeel_tree_duplicate_loop_to_edge_cfg (loop, loops, e)))
    {
      loop_loc = find_loop_location (loop);
      if (dump_file && (dump_flags & TDF_DETAILS))
        {
          if (loop_loc != UNKNOWN_LOC)
            fprintf (dump_file, "\n%s:%d: note: ",
                     LOC_FILE (loop_loc), LOC_LINE (loop_loc));
          fprintf (dump_file, "tree_duplicate_loop_to_edge_cfg failed.\n");
        }
      return ((void*)0);
    }

  if (e == exit_e)
    {

      first_loop = loop;
      second_loop = new_loop;
    }
  else
    {

      first_loop = new_loop;
      second_loop = loop;
    }

  definitions = ssa_names_to_replace ();
  slpeel_update_phis_for_duplicate_loop (loop, new_loop, e == exit_e);
  rename_variables_in_loop (new_loop);
  bb_before_first_loop = split_edge (loop_preheader_edge (first_loop));
  add_bb_to_loop (bb_before_first_loop, first_loop->outer);
  bb_before_second_loop = split_edge (first_loop->single_exit);
  add_bb_to_loop (bb_before_second_loop, first_loop->outer);

  pre_condition =
    fold_build2 (LE_EXPR, boolean_type_node, first_niters,
                 build_int_cst (TREE_TYPE (first_niters), 0));
  skip_e = slpeel_add_loop_guard (bb_before_first_loop, pre_condition,
                                  bb_before_second_loop, bb_before_first_loop);
  slpeel_update_phi_nodes_for_guard1 (skip_e, first_loop,
          first_loop == new_loop,
          &new_exit_bb, &definitions);
  bb_between_loops = new_exit_bb;
  bb_after_second_loop = split_edge (second_loop->single_exit);
  add_bb_to_loop (bb_after_second_loop, second_loop->outer);

  pre_condition =
 fold_build2 (EQ_EXPR, boolean_type_node, first_niters, niters);
  skip_e = slpeel_add_loop_guard (bb_between_loops, pre_condition,
                                  bb_after_second_loop, bb_before_first_loop);
  slpeel_update_phi_nodes_for_guard2 (skip_e, second_loop,
                                     second_loop == new_loop, &new_exit_bb);



  if (update_first_loop_count)
    slpeel_make_loop_iterate_ntimes (first_loop, first_niters);

  BITMAP_FREE (definitions);
  delete_update_ssa ();

  return new_loop;
}
