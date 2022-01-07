
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_node {int addr; } ;
struct cluster {size_t highest_node; struct tipc_node** nodes; } ;


 int assert (int) ;
 scalar_t__ in_own_cluster (int ) ;
 size_t tipc_highest_allowed_slave ;
 size_t tipc_max_nodes ;
 size_t tipc_node (int ) ;

void tipc_cltr_attach_node(struct cluster *c_ptr, struct tipc_node *n_ptr)
{
 u32 n_num = tipc_node(n_ptr->addr);
 u32 max_n_num = tipc_max_nodes;

 if (in_own_cluster(n_ptr->addr))
  max_n_num = tipc_highest_allowed_slave;
 assert(n_num > 0);
 assert(n_num <= max_n_num);
 assert(c_ptr->nodes[n_num] == ((void*)0));
 c_ptr->nodes[n_num] = n_ptr;
 if (n_num > c_ptr->highest_node)
  c_ptr->highest_node = n_num;
}
