
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int TIPC_CLUSTER_SCOPE ;
 int TIPC_NODE_SCOPE ;
 int TIPC_ZONE_SCOPE ;
 scalar_t__ likely (int) ;
 scalar_t__ tipc_cluster (int ) ;
 scalar_t__ tipc_node (int ) ;

__attribute__((used)) static inline int addr_scope(u32 domain)
{
 if (likely(!domain))
  return TIPC_ZONE_SCOPE;
 if (tipc_node(domain))
  return TIPC_NODE_SCOPE;
 if (tipc_cluster(domain))
  return TIPC_CLUSTER_SCOPE;
 return TIPC_ZONE_SCOPE;
}
