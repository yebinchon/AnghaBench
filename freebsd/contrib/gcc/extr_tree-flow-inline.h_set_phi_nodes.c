
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {scalar_t__ phi_nodes; } ;


 scalar_t__ PHI_CHAIN (scalar_t__) ;
 int set_bb_for_stmt (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static inline void
set_phi_nodes (basic_block bb, tree l)
{
  tree phi;

  bb->phi_nodes = l;
  for (phi = l; phi; phi = PHI_CHAIN (phi))
    set_bb_for_stmt (phi, bb);
}
