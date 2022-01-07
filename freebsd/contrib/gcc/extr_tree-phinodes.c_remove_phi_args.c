
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* edge ;
struct TYPE_3__ {int dest_idx; int dest; } ;


 scalar_t__ PHI_CHAIN (scalar_t__) ;
 scalar_t__ phi_nodes (int ) ;
 int remove_phi_arg_num (scalar_t__,int ) ;

void
remove_phi_args (edge e)
{
  tree phi;

  for (phi = phi_nodes (e->dest); phi; phi = PHI_CHAIN (phi))
    remove_phi_arg_num (phi, e->dest_idx);
}
