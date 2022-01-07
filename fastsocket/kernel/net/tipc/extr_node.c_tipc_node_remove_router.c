
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_node {int last_router; int* routers; } ;


 int node_lost_contact (struct tipc_node*) ;
 int tipc_max_nodes ;
 int tipc_node (int) ;
 int tipc_node_is_up (struct tipc_node*) ;

void tipc_node_remove_router(struct tipc_node *n_ptr, u32 router)
{
 u32 r_num = tipc_node(router);

 if (n_ptr->last_router < 0)
  return;

 n_ptr->routers[r_num / 32] =
  ((~(1 << (r_num % 32))) & (n_ptr->routers[r_num / 32]));
 n_ptr->last_router = tipc_max_nodes / 32;
 while ((--n_ptr->last_router >= 0) &&
        !n_ptr->routers[n_ptr->last_router]);

 if (!tipc_node_is_up(n_ptr))
  node_lost_contact(n_ptr);
}
