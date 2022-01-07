
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_node {struct link** active_links; } ;
struct link {int dummy; } ;


 scalar_t__ MAX_MSG_SIZE ;
 scalar_t__ MAX_PKT_DEFAULT ;
 scalar_t__ link_max_pkt (struct link*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int tipc_net_lock ;
 int tipc_node_lock (struct tipc_node*) ;
 struct tipc_node* tipc_node_select (scalar_t__,scalar_t__) ;
 int tipc_node_unlock (struct tipc_node*) ;
 scalar_t__ tipc_own_addr ;

u32 tipc_link_get_max_pkt(u32 dest, u32 selector)
{
 struct tipc_node *n_ptr;
 struct link *l_ptr;
 u32 res = MAX_PKT_DEFAULT;

 if (dest == tipc_own_addr)
  return MAX_MSG_SIZE;

 read_lock_bh(&tipc_net_lock);
 n_ptr = tipc_node_select(dest, selector);
 if (n_ptr) {
  tipc_node_lock(n_ptr);
  l_ptr = n_ptr->active_links[selector & 1];
  if (l_ptr)
   res = link_max_pkt(l_ptr);
  tipc_node_unlock(n_ptr);
 }
 read_unlock_bh(&tipc_net_lock);
 return res;
}
