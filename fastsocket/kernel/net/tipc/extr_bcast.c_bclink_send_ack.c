
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_node {int addr; struct link** active_links; } ;
struct link {int dummy; } ;


 int STATE_MSG ;
 int tipc_link_send_proto_msg (struct link*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void bclink_send_ack(struct tipc_node *n_ptr)
{
 struct link *l_ptr = n_ptr->active_links[n_ptr->addr & 1];

 if (l_ptr != ((void*)0))
  tipc_link_send_proto_msg(l_ptr, STATE_MSG, 0, 0, 0, 0, 0);
}
