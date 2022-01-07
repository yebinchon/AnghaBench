
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct loop {int dummy; } ;
struct TYPE_2__ {int src; } ;


 scalar_t__ PHI_ARG_DEF (scalar_t__,int) ;
 TYPE_1__* PHI_ARG_EDGE (scalar_t__,int) ;
 int PHI_NUM_ARGS (scalar_t__) ;
 scalar_t__ flow_bb_inside_loop_p (struct loop*,int ) ;

__attribute__((used)) static bool
phi_loop_edge_uses_def (struct loop *loop, tree phi, tree def)
{
  int i;
  for (i = 0; i < PHI_NUM_ARGS (phi); i++)
    if (flow_bb_inside_loop_p (loop, PHI_ARG_EDGE (phi, i)->src))
      if (PHI_ARG_DEF (phi, i) == def)
 return 1;
  return 0;
}
