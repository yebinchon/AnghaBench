
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {TYPE_1__* single_exit; int outer; } ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_18__ {int preds; } ;
struct TYPE_17__ {int dest_idx; TYPE_2__* src; TYPE_2__* dest; } ;


 int EDGE_COUNT (int ) ;
 TYPE_1__* EDGE_PRED (TYPE_2__*,int ) ;
 TYPE_1__* EDGE_SUCC (TYPE_2__*,int ) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,TYPE_1__*) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int PHI_RESULT (scalar_t__) ;
 int SET_PHI_ARG_DEF (scalar_t__,int ,int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int add_bb_to_loop (TYPE_2__*,int ) ;
 int add_phi_arg (scalar_t__,scalar_t__,TYPE_1__*) ;
 scalar_t__ create_phi_node (int ,TYPE_2__*) ;
 int gcc_assert (int) ;
 scalar_t__ get_current_def (scalar_t__) ;
 scalar_t__ phi_nodes (TYPE_2__*) ;
 int phi_reverse (scalar_t__) ;
 int set_phi_nodes (TYPE_2__*,int ) ;
 TYPE_2__* split_edge (TYPE_1__*) ;

__attribute__((used)) static void
slpeel_update_phi_nodes_for_guard2 (edge guard_edge, struct loop *loop,
                                    bool is_new_loop, basic_block *new_exit_bb)
{
  tree orig_phi, new_phi;
  tree update_phi, update_phi2;
  tree guard_arg, loop_arg;
  basic_block new_merge_bb = guard_edge->dest;
  edge e = EDGE_SUCC (new_merge_bb, 0);
  basic_block update_bb = e->dest;
  edge new_exit_e;
  tree orig_def, orig_def_new_name;
  tree new_name, new_name2;
  tree arg;


  *new_exit_bb = split_edge (loop->single_exit);
  add_bb_to_loop (*new_exit_bb, loop->outer);

  new_exit_e = EDGE_SUCC (*new_exit_bb, 0);

  for (update_phi = phi_nodes (update_bb); update_phi;
       update_phi = PHI_CHAIN (update_phi))
    {
      orig_phi = update_phi;
      orig_def = PHI_ARG_DEF_FROM_EDGE (orig_phi, e);


      if (TREE_CODE (orig_def) != SSA_NAME)
        continue;
      orig_def_new_name = get_current_def (orig_def);
      arg = NULL_TREE;




      new_phi = create_phi_node (SSA_NAME_VAR (PHI_RESULT (orig_phi)),
                                 new_merge_bb);



      new_name = orig_def;
      new_name2 = NULL_TREE;
      if (orig_def_new_name)
        {
          new_name = orig_def_new_name;




          new_name2 = get_current_def (new_name);
        }

      if (is_new_loop)
        {
          guard_arg = orig_def;
          loop_arg = new_name;
        }
      else
        {
          guard_arg = new_name;
          loop_arg = orig_def;
        }
      if (new_name2)
        guard_arg = new_name2;

      add_phi_arg (new_phi, loop_arg, new_exit_e);
      add_phi_arg (new_phi, guard_arg, guard_edge);


      gcc_assert (PHI_ARG_DEF_FROM_EDGE (update_phi, e) == orig_def);
      SET_PHI_ARG_DEF (update_phi, e->dest_idx, PHI_RESULT (new_phi));
      update_phi2 = new_phi;





      new_phi = create_phi_node (SSA_NAME_VAR (PHI_RESULT (orig_phi)),
                                 *new_exit_bb);


      add_phi_arg (new_phi, loop_arg, loop->single_exit);


      gcc_assert (PHI_ARG_DEF_FROM_EDGE (update_phi2, new_exit_e) == loop_arg);
      SET_PHI_ARG_DEF (update_phi2, new_exit_e->dest_idx, PHI_RESULT (new_phi));
      if (guard_arg == new_name2)
 continue;
      arg = guard_arg;


      new_phi = create_phi_node (SSA_NAME_VAR (PHI_RESULT (orig_phi)),
                                 guard_edge->src);


      gcc_assert (EDGE_COUNT (guard_edge->src->preds) == 1);
      add_phi_arg (new_phi, arg, EDGE_PRED (guard_edge->src, 0));


      gcc_assert (PHI_ARG_DEF_FROM_EDGE (update_phi2, guard_edge)
                                                                == guard_arg);
      SET_PHI_ARG_DEF (update_phi2, guard_edge->dest_idx, PHI_RESULT (new_phi));
    }

  set_phi_nodes (new_merge_bb, phi_reverse (phi_nodes (new_merge_bb)));
}
