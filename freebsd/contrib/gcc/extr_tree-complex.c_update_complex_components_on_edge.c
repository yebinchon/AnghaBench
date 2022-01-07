
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int edge ;


 int bsi_insert_on_edge (int ,scalar_t__) ;
 scalar_t__ set_component_ssa_name (scalar_t__,int,scalar_t__) ;

__attribute__((used)) static void
update_complex_components_on_edge (edge e, tree lhs, tree r, tree i)
{
  tree list;

  list = set_component_ssa_name (lhs, 0, r);
  if (list)
    bsi_insert_on_edge (e, list);

  list = set_component_ssa_name (lhs, 1, i);
  if (list)
    bsi_insert_on_edge (e, list);
}
