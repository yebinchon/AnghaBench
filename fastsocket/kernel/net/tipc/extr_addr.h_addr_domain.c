
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIPC_CLUSTER_SCOPE ;
 int TIPC_NODE_SCOPE ;
 scalar_t__ likely (int) ;
 int tipc_addr (int ,int ,int ) ;
 int tipc_cluster (int) ;
 int tipc_own_addr ;
 int tipc_zone (int) ;

__attribute__((used)) static inline int addr_domain(int sc)
{
 if (likely(sc == TIPC_NODE_SCOPE))
  return tipc_own_addr;
 if (sc == TIPC_CLUSTER_SCOPE)
  return tipc_addr(tipc_zone(tipc_own_addr),
     tipc_cluster(tipc_own_addr), 0);
 return tipc_addr(tipc_zone(tipc_own_addr), 0, 0);
}
