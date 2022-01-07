
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int bitmap ;
typedef scalar_t__ basic_block ;


 int CDI_DOMINATORS ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int eliminate_const_or_copy (scalar_t__,int ) ;
 scalar_t__ first_dom_son (int ,scalar_t__) ;
 scalar_t__ next_dom_son (int ,scalar_t__) ;
 scalar_t__ phi_nodes (scalar_t__) ;

__attribute__((used)) static void
eliminate_degenerate_phis_1 (basic_block bb, bitmap interesting_names)
{
  tree phi, next;
  basic_block son;

  for (phi = phi_nodes (bb); phi; phi = next)
    {
      next = PHI_CHAIN (phi);
      eliminate_const_or_copy (phi, interesting_names);
    }


  for (son = first_dom_son (CDI_DOMINATORS, bb);
       son;
       son = next_dom_son (CDI_DOMINATORS, son))
    eliminate_degenerate_phis_1 (son, interesting_names);
}
