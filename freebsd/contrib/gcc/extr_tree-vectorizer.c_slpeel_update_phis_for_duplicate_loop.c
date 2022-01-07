
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {int header; TYPE_1__* single_exit; } ;
typedef TYPE_1__* edge ;
struct TYPE_6__ {int dest_idx; } ;


 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,TYPE_1__*) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 scalar_t__ PHI_RESULT (scalar_t__) ;
 int SET_PHI_ARG_DEF (scalar_t__,int ,scalar_t__) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int add_phi_arg (scalar_t__,scalar_t__,TYPE_1__*) ;
 int gcc_assert (int) ;
 scalar_t__ get_current_def (scalar_t__) ;
 TYPE_1__* loop_latch_edge (struct loop*) ;
 TYPE_1__* loop_preheader_edge (struct loop*) ;
 scalar_t__ phi_nodes (int ) ;

__attribute__((used)) static void
slpeel_update_phis_for_duplicate_loop (struct loop *orig_loop,
           struct loop *new_loop, bool after)
{
  tree new_ssa_name;
  tree phi_new, phi_orig;
  tree def;
  edge orig_loop_latch = loop_latch_edge (orig_loop);
  edge orig_entry_e = loop_preheader_edge (orig_loop);
  edge new_loop_exit_e = new_loop->single_exit;
  edge new_loop_entry_e = loop_preheader_edge (new_loop);
  edge entry_arg_e = (after ? orig_loop_latch : orig_entry_e);
  for (phi_new = phi_nodes (new_loop->header),
       phi_orig = phi_nodes (orig_loop->header);
       phi_new && phi_orig;
       phi_new = PHI_CHAIN (phi_new), phi_orig = PHI_CHAIN (phi_orig))
    {

      def = PHI_ARG_DEF_FROM_EDGE (phi_orig, entry_arg_e);
      add_phi_arg (phi_new, def, new_loop_entry_e);


      def = PHI_ARG_DEF_FROM_EDGE (phi_orig, orig_loop_latch);
      if (TREE_CODE (def) != SSA_NAME)
        continue;

      new_ssa_name = get_current_def (def);
      if (!new_ssa_name)
 {


   new_ssa_name = PHI_RESULT (phi_new);
 }


      add_phi_arg (phi_new, new_ssa_name, loop_latch_edge (new_loop));


      if (!after)
        {
          gcc_assert (new_loop_exit_e == orig_entry_e);
          SET_PHI_ARG_DEF (phi_orig,
                           new_loop_exit_e->dest_idx,
                           new_ssa_name);
        }
    }
}
