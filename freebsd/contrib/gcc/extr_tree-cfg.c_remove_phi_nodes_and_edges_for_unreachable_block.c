
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {int succs; } ;


 scalar_t__ EDGE_COUNT (int ) ;
 int EDGE_SUCC (TYPE_1__*,int ) ;
 int NULL_TREE ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 scalar_t__ phi_nodes (TYPE_1__*) ;
 int remove_edge (int ) ;
 int remove_phi_node (scalar_t__,int ) ;

__attribute__((used)) static void
remove_phi_nodes_and_edges_for_unreachable_block (basic_block bb)
{
  tree phi;



  phi = phi_nodes (bb);
  while (phi)
    {
      tree next = PHI_CHAIN (phi);
      remove_phi_node (phi, NULL_TREE);
      phi = next;
    }


  while (EDGE_COUNT (bb->succs) > 0)
    remove_edge (EDGE_SUCC (bb, 0));
}
