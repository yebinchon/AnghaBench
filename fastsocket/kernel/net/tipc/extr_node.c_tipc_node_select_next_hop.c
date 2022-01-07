
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_node {int dummy; } ;


 scalar_t__ in_own_cluster (scalar_t__) ;
 scalar_t__ is_slave (scalar_t__) ;
 scalar_t__ tipc_addr (int ,int ,int ) ;
 int tipc_addr_domain_valid (scalar_t__) ;
 int tipc_cluster (scalar_t__) ;
 struct tipc_node* tipc_net_select_remote_node (scalar_t__,scalar_t__) ;
 scalar_t__ tipc_net_select_router (scalar_t__,scalar_t__) ;
 struct tipc_node* tipc_node_find (scalar_t__) ;
 scalar_t__ tipc_node_has_active_links (struct tipc_node*) ;
 struct tipc_node* tipc_node_select (scalar_t__,scalar_t__) ;
 scalar_t__ tipc_node_select_router (struct tipc_node*,scalar_t__) ;
 int tipc_zone (scalar_t__) ;

struct tipc_node *tipc_node_select_next_hop(u32 addr, u32 selector)
{
 struct tipc_node *n_ptr;
 u32 router_addr;

 if (!tipc_addr_domain_valid(addr))
  return ((void*)0);


 n_ptr = tipc_node_find(addr);
 if (n_ptr && tipc_node_has_active_links(n_ptr))
  return n_ptr;


 if (!is_slave(addr) && in_own_cluster(addr))
  return ((void*)0);


 router_addr = tipc_node_select_router(n_ptr, selector);
 if (router_addr)
  return tipc_node_select(router_addr, selector);



 if (is_slave(addr))
  return ((void*)0);


 addr = tipc_addr(tipc_zone(addr), tipc_cluster(addr), 0);
 n_ptr = tipc_net_select_remote_node(addr, selector);
 if (n_ptr && tipc_node_has_active_links(n_ptr))
  return n_ptr;


 router_addr = tipc_net_select_router(addr, selector);
 if (router_addr)
  return tipc_node_select(router_addr, selector);

 return ((void*)0);
}
