
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tipc_node_subscr {TYPE_1__* node; int nodesub_list; void* usr_handle; int handle_node_down; } ;
typedef int net_ev_handler ;
struct TYPE_4__ {int nsub; } ;


 int list_add_tail (int *,int *) ;
 TYPE_1__* tipc_node_find (scalar_t__) ;
 int tipc_node_lock (TYPE_1__*) ;
 int tipc_node_unlock (TYPE_1__*) ;
 scalar_t__ tipc_own_addr ;
 int warn (char*,scalar_t__) ;

void tipc_nodesub_subscribe(struct tipc_node_subscr *node_sub, u32 addr,
         void *usr_handle, net_ev_handler handle_down)
{
 if (addr == tipc_own_addr) {
  node_sub->node = ((void*)0);
  return;
 }

 node_sub->node = tipc_node_find(addr);
 if (!node_sub->node) {
  warn("Node subscription rejected, unknown node 0x%x\n", addr);
  return;
 }
 node_sub->handle_node_down = handle_down;
 node_sub->usr_handle = usr_handle;

 tipc_node_lock(node_sub->node);
 list_add_tail(&node_sub->nodesub_list, &node_sub->node->nsub);
 tipc_node_unlock(node_sub->node);
}
