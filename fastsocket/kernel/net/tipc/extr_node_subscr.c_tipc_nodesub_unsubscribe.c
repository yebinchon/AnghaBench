
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node_subscr {int node; int nodesub_list; } ;


 int list_del_init (int *) ;
 int tipc_node_lock (int ) ;
 int tipc_node_unlock (int ) ;

void tipc_nodesub_unsubscribe(struct tipc_node_subscr *node_sub)
{
 if (!node_sub->node)
  return;

 tipc_node_lock(node_sub->node);
 list_del_init(&node_sub->nodesub_list);
 tipc_node_unlock(node_sub->node);
}
