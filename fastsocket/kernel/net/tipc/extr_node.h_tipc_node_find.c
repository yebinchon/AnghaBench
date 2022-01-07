
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {int dummy; } ;
struct cluster {struct tipc_node** nodes; } ;


 int in_own_cluster (int ) ;
 scalar_t__ likely (int ) ;
 scalar_t__ tipc_addr_domain_valid (int ) ;
 struct cluster* tipc_cltr_find (int ) ;
 struct tipc_node** tipc_local_nodes ;
 size_t tipc_node (int ) ;

__attribute__((used)) static inline struct tipc_node *tipc_node_find(u32 addr)
{
 if (likely(in_own_cluster(addr)))
  return tipc_local_nodes[tipc_node(addr)];
 else if (tipc_addr_domain_valid(addr)) {
  struct cluster *c_ptr = tipc_cltr_find(addr);

  if (c_ptr)
   return c_ptr->nodes[tipc_node(addr)];
 }
 return ((void*)0);
}
