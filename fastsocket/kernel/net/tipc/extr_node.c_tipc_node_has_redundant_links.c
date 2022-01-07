
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int working_links; } ;



int tipc_node_has_redundant_links(struct tipc_node *n_ptr)
{
 return (n_ptr->working_links > 1);
}
