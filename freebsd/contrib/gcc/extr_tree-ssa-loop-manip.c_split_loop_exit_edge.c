
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int use_operand_p ;
typedef scalar_t__ tree ;
typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_5__ {int dest; } ;
typedef scalar_t__ SSA_NAME_DEF_STMT ;


 int PHI_ARG_DEF_PTR_FROM_EDGE (scalar_t__,int ) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int SET_USE (int ,scalar_t__) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ USE_FROM_PTR (int ) ;
 int add_phi_arg (scalar_t__,scalar_t__,TYPE_1__*) ;
 scalar_t__ create_phi_node (scalar_t__,int ) ;
 scalar_t__ duplicate_ssa_name (scalar_t__,int *) ;
 int loop_split_edge_with (TYPE_1__*,int *) ;
 scalar_t__ phi_nodes (int ) ;
 int single_succ_edge (int ) ;

void
split_loop_exit_edge (edge exit)
{
  basic_block dest = exit->dest;
  basic_block bb = loop_split_edge_with (exit, ((void*)0));
  tree phi, new_phi, new_name, name;
  use_operand_p op_p;

  for (phi = phi_nodes (dest); phi; phi = PHI_CHAIN (phi))
    {
      op_p = PHI_ARG_DEF_PTR_FROM_EDGE (phi, single_succ_edge (bb));

      name = USE_FROM_PTR (op_p);



      if (TREE_CODE (name) != SSA_NAME)
 continue;



      new_name = duplicate_ssa_name (name, ((void*)0));
      new_phi = create_phi_node (new_name, bb);
      SSA_NAME_DEF_STMT (new_name) = new_phi;
      add_phi_arg (new_phi, name, exit);
      SET_USE (op_p, new_name);
    }
}
