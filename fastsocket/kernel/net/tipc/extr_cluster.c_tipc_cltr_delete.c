
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cluster {size_t highest_node; size_t highest_slave; struct cluster* nodes; } ;


 size_t LOWEST_SLAVE ;
 int kfree (struct cluster*) ;
 int tipc_node_delete (struct cluster) ;

void tipc_cltr_delete(struct cluster *c_ptr)
{
 u32 n_num;

 if (!c_ptr)
  return;
 for (n_num = 1; n_num <= c_ptr->highest_node; n_num++) {
  tipc_node_delete(c_ptr->nodes[n_num]);
 }
 for (n_num = LOWEST_SLAVE; n_num <= c_ptr->highest_slave; n_num++) {
  tipc_node_delete(c_ptr->nodes[n_num]);
 }
 kfree(c_ptr->nodes);
 kfree(c_ptr);
}
