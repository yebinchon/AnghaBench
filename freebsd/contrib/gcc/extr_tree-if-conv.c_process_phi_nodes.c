
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {unsigned int num_nodes; TYPE_1__* header; } ;
typedef int block_stmt_iterator ;
typedef TYPE_1__* basic_block ;
struct TYPE_8__ {int * phi_nodes; } ;


 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int bsi_after_labels (TYPE_1__*) ;
 TYPE_1__* find_phi_replacement_condition (struct loop*,TYPE_1__*,scalar_t__*,int *) ;
 TYPE_1__** ifc_bbs ;
 scalar_t__ phi_nodes (TYPE_1__*) ;
 int release_phi_node (scalar_t__) ;
 int replace_phi_with_cond_modify_expr (scalar_t__,scalar_t__,TYPE_1__*,int *) ;

__attribute__((used)) static void
process_phi_nodes (struct loop *loop)
{
  basic_block bb;
  unsigned int orig_loop_num_nodes = loop->num_nodes;
  unsigned int i;


  for (i = 1; i < orig_loop_num_nodes; i++)
    {
      tree phi, cond;
      block_stmt_iterator bsi;
      basic_block true_bb = ((void*)0);
      bb = ifc_bbs[i];

      if (bb == loop->header)
 continue;

      phi = phi_nodes (bb);
      bsi = bsi_after_labels (bb);



      if (phi)
 true_bb = find_phi_replacement_condition (loop, bb, &cond, &bsi);

      while (phi)
 {
   tree next = PHI_CHAIN (phi);
   replace_phi_with_cond_modify_expr (phi, cond, true_bb, &bsi);
   release_phi_node (phi);
   phi = next;
 }
      bb->phi_nodes = ((void*)0);
    }
  return;
}
