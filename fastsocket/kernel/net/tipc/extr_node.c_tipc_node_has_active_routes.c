
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {scalar_t__ last_router; } ;



__attribute__((used)) static int tipc_node_has_active_routes(struct tipc_node *n_ptr)
{
 return (n_ptr && (n_ptr->last_router >= 0));
}
