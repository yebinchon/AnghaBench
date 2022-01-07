
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int recv_info; } ;
struct link {int next_in_no; int addr; int b_ptr; int owner; TYPE_1__ stats; } ;


 int in_own_cluster (int ) ;
 int link_send_event (int ,struct link*,int) ;
 int tipc_bearer_add_dest (int ,int ) ;
 int tipc_cfg_link_event ;
 int tipc_disc_link_event ;
 int tipc_node_link_up (int ,struct link*) ;

__attribute__((used)) static void link_activate(struct link *l_ptr)
{
 l_ptr->next_in_no = l_ptr->stats.recv_info = 1;
 tipc_node_link_up(l_ptr->owner, l_ptr);
 tipc_bearer_add_dest(l_ptr->b_ptr, l_ptr->addr);
 link_send_event(tipc_cfg_link_event, l_ptr, 1);
 if (!in_own_cluster(l_ptr->addr))
  link_send_event(tipc_disc_link_event, l_ptr, 1);
}
