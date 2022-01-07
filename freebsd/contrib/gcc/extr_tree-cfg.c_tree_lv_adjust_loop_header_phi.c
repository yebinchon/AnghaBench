
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_5__ {int dest_idx; } ;


 scalar_t__ PHI_ARG_DEF (scalar_t__,int ) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int add_phi_arg (scalar_t__,scalar_t__,TYPE_1__*) ;
 TYPE_1__* find_edge (int ,int ) ;
 int gcc_assert (int ) ;
 scalar_t__ phi_nodes (int ) ;

__attribute__((used)) static void
tree_lv_adjust_loop_header_phi (basic_block first, basic_block second,
    basic_block new_head, edge e)
{
  tree phi1, phi2;
  edge e2 = find_edge (new_head, second);



  gcc_assert (e2 != ((void*)0));




  for (phi2 = phi_nodes (second), phi1 = phi_nodes (first);
       phi2 && phi1;
       phi2 = PHI_CHAIN (phi2), phi1 = PHI_CHAIN (phi1))
    {
      tree def = PHI_ARG_DEF (phi2, e2->dest_idx);
      add_phi_arg (phi1, def, e);
    }
}
