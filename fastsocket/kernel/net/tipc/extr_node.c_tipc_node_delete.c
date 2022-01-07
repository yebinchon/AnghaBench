
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct tipc_node {int addr; int * links; } ;


 size_t MAX_BEARERS ;
 int dbg (char*,int ) ;
 int kfree (struct tipc_node*) ;
 int link_delete (int ) ;

void tipc_node_delete(struct tipc_node *n_ptr)
{
 if (!n_ptr)
  return;
 dbg("node %x deleted\n", n_ptr->addr);
 kfree(n_ptr);
}
