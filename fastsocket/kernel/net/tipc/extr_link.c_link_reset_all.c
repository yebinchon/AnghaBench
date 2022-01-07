
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_node {scalar_t__* links; int addr; } ;


 size_t MAX_BEARERS ;
 int TIPC_OUTPUT ;
 int addr_string_fill (char*,int ) ;
 int link_print (scalar_t__,int ,char*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int tipc_link_reset (scalar_t__) ;
 int tipc_net_lock ;
 struct tipc_node* tipc_node_find (size_t) ;
 int tipc_node_lock (struct tipc_node*) ;
 int tipc_node_unlock (struct tipc_node*) ;
 int warn (char*,int ) ;

__attribute__((used)) static void link_reset_all(unsigned long addr)
{
 struct tipc_node *n_ptr;
 char addr_string[16];
 u32 i;

 read_lock_bh(&tipc_net_lock);
 n_ptr = tipc_node_find((u32)addr);
 if (!n_ptr) {
  read_unlock_bh(&tipc_net_lock);
  return;
 }

 tipc_node_lock(n_ptr);

 warn("Resetting all links to %s\n",
      addr_string_fill(addr_string, n_ptr->addr));

 for (i = 0; i < MAX_BEARERS; i++) {
  if (n_ptr->links[i]) {
   link_print(n_ptr->links[i], TIPC_OUTPUT,
       "Resetting link\n");
   tipc_link_reset(n_ptr->links[i]);
  }
 }

 tipc_node_unlock(n_ptr);
 read_unlock_bh(&tipc_net_lock);
}
