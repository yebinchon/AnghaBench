
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {TYPE_1__* single_exit; int latch; int outer; int header; } ;
typedef TYPE_1__* edge ;
typedef int bitmap ;
typedef int basic_block ;
struct TYPE_8__ {int dest_idx; int dest; } ;


 TYPE_1__* EDGE_SUCC (int ,int ) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,TYPE_1__*) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 scalar_t__ PHI_RESULT (scalar_t__) ;
 int SET_PHI_ARG_DEF (scalar_t__,int ,scalar_t__) ;
 int SSA_NAME_VAR (scalar_t__) ;
 int SSA_NAME_VERSION (scalar_t__) ;
 int add_bb_to_loop (int ,int ) ;
 int add_phi_arg (scalar_t__,scalar_t__,TYPE_1__*) ;
 int bitmap_set_bit (int ,int ) ;
 scalar_t__ create_phi_node (int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ get_current_def (scalar_t__) ;
 int is_gimple_reg (int ) ;
 TYPE_1__* loop_preheader_edge (struct loop*) ;
 scalar_t__ phi_nodes (int ) ;
 int phi_reverse (scalar_t__) ;
 int set_current_def (scalar_t__,scalar_t__) ;
 int set_phi_nodes (int ,int ) ;
 int split_edge (TYPE_1__*) ;
 int vect_vnames_to_rename ;

__attribute__((used)) static void
slpeel_update_phi_nodes_for_guard1 (edge guard_edge, struct loop *loop,
                                    bool is_new_loop, basic_block *new_exit_bb,
                                    bitmap *defs)
{
  tree orig_phi, new_phi;
  tree update_phi, update_phi2;
  tree guard_arg, loop_arg;
  basic_block new_merge_bb = guard_edge->dest;
  edge e = EDGE_SUCC (new_merge_bb, 0);
  basic_block update_bb = e->dest;
  basic_block orig_bb = loop->header;
  edge new_exit_e;
  tree current_new_name;
  tree name;


  *new_exit_bb = split_edge (loop->single_exit);
  add_bb_to_loop (*new_exit_bb, loop->outer);

  new_exit_e = EDGE_SUCC (*new_exit_bb, 0);

  for (orig_phi = phi_nodes (orig_bb), update_phi = phi_nodes (update_bb);
       orig_phi && update_phi;
       orig_phi = PHI_CHAIN (orig_phi), update_phi = PHI_CHAIN (update_phi))
    {





      name = PHI_RESULT (orig_phi);
      if (!is_gimple_reg (SSA_NAME_VAR (name)))
        bitmap_set_bit (vect_vnames_to_rename, SSA_NAME_VERSION (name));




      new_phi = create_phi_node (SSA_NAME_VAR (PHI_RESULT (orig_phi)),
                                 new_merge_bb);



      loop_arg = PHI_ARG_DEF_FROM_EDGE (orig_phi, EDGE_SUCC (loop->latch, 0));
      guard_arg = PHI_ARG_DEF_FROM_EDGE (orig_phi, loop_preheader_edge (loop));

      add_phi_arg (new_phi, loop_arg, new_exit_e);
      add_phi_arg (new_phi, guard_arg, guard_edge);


      gcc_assert (PHI_ARG_DEF_FROM_EDGE (update_phi, e) == loop_arg
                  || PHI_ARG_DEF_FROM_EDGE (update_phi, e) == guard_arg);
      SET_PHI_ARG_DEF (update_phi, e->dest_idx, PHI_RESULT (new_phi));
      update_phi2 = new_phi;





      new_phi = create_phi_node (SSA_NAME_VAR (PHI_RESULT (orig_phi)),
                                 *new_exit_bb);


      add_phi_arg (new_phi, loop_arg, loop->single_exit);


      gcc_assert (PHI_ARG_DEF_FROM_EDGE (update_phi2, new_exit_e) == loop_arg);
      SET_PHI_ARG_DEF (update_phi2, new_exit_e->dest_idx, PHI_RESULT (new_phi));
      if (is_new_loop)
        current_new_name = loop_arg;
      else
        {
          current_new_name = get_current_def (loop_arg);




   if (!current_new_name)
     continue;
        }
      gcc_assert (get_current_def (current_new_name) == NULL_TREE);

      set_current_def (current_new_name, PHI_RESULT (new_phi));
      bitmap_set_bit (*defs, SSA_NAME_VERSION (current_new_name));
    }

  set_phi_nodes (new_merge_bb, phi_reverse (phi_nodes (new_merge_bb)));
}
