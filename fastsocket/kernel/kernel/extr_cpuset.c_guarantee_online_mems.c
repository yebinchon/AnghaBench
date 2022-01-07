
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int mems_allowed; struct cpuset* parent; } ;
typedef int nodemask_t ;


 int BUG_ON (int) ;
 size_t N_HIGH_MEMORY ;
 int * node_states ;
 int nodes_and (int ,int ,int ) ;
 int nodes_intersects (int ,int ) ;

__attribute__((used)) static void guarantee_online_mems(const struct cpuset *cs, nodemask_t *pmask)
{
 while (cs && !nodes_intersects(cs->mems_allowed,
     node_states[N_HIGH_MEMORY]))
  cs = cs->parent;
 if (cs)
  nodes_and(*pmask, cs->mems_allowed,
     node_states[N_HIGH_MEMORY]);
 else
  *pmask = node_states[N_HIGH_MEMORY];
 BUG_ON(!nodes_intersects(*pmask, node_states[N_HIGH_MEMORY]));
}
