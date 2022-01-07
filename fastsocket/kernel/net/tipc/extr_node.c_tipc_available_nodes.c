
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_node {int addr; struct tipc_node* next; } ;


 int in_scope (scalar_t__ const,int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int tipc_net_lock ;
 scalar_t__ tipc_node_is_up (struct tipc_node*) ;
 struct tipc_node* tipc_nodes ;

u32 tipc_available_nodes(const u32 domain)
{
 struct tipc_node *n_ptr;
 u32 cnt = 0;

 read_lock_bh(&tipc_net_lock);
 for (n_ptr = tipc_nodes; n_ptr; n_ptr = n_ptr->next) {
  if (!in_scope(domain, n_ptr->addr))
   continue;
  if (tipc_node_is_up(n_ptr))
   cnt++;
 }
 read_unlock_bh(&tipc_net_lock);
 return cnt;
}
