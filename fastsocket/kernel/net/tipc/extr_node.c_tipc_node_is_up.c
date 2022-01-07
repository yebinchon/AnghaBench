
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int dummy; } ;


 scalar_t__ tipc_node_has_active_links (struct tipc_node*) ;
 scalar_t__ tipc_node_has_active_routes (struct tipc_node*) ;

int tipc_node_is_up(struct tipc_node *n_ptr)
{
 return (tipc_node_has_active_links(n_ptr) || tipc_node_has_active_routes(n_ptr));
}
