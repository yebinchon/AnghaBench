
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_4__ {int dest; } ;


 scalar_t__ PHI_ARG_DEF_FROM_EDGE (scalar_t__,TYPE_1__*) ;
 scalar_t__ PHI_CHAIN (scalar_t__) ;
 scalar_t__ PHI_RESULT (scalar_t__) ;
 scalar_t__ phi_nodes (int ) ;

__attribute__((used)) static tree
propagate_through_phis (tree var, edge e)
{
  basic_block dest = e->dest;
  tree phi;

  for (phi = phi_nodes (dest); phi; phi = PHI_CHAIN (phi))
    if (PHI_ARG_DEF_FROM_EDGE (phi, e) == var)
      return PHI_RESULT (phi);

  return var;
}
