
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {int dummy; } ;


 int in_own_cluster (int ) ;
 scalar_t__ likely (int ) ;
 struct tipc_node** tipc_local_nodes ;
 size_t tipc_node (int ) ;
 struct tipc_node* tipc_node_select_next_hop (int ,int ) ;

__attribute__((used)) static inline struct tipc_node *tipc_node_select(u32 addr, u32 selector)
{
 if (likely(in_own_cluster(addr)))
  return tipc_local_nodes[tipc_node(addr)];
 return tipc_node_select_next_hop(addr, selector);
}
