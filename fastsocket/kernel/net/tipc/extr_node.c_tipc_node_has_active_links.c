
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {scalar_t__* active_links; } ;



int tipc_node_has_active_links(struct tipc_node *n_ptr)
{
 return (n_ptr &&
  ((n_ptr->active_links[0]) || (n_ptr->active_links[1])));
}
