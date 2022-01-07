
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cluster {int addr; } ;


 int ROUTE_REMOVAL ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_set_remote_node (struct tipc_msg*,int ) ;
 int msg_set_type (struct tipc_msg*,int ) ;
 int tipc_cltr_multicast (struct cluster*,struct sk_buff*,int ,int ) ;
 struct sk_buff* tipc_cltr_prepare_routing_msg (int ,int ) ;
 int warn (char*) ;

void tipc_cltr_bcast_lost_route(struct cluster *c_ptr, u32 dest,
    u32 lower, u32 upper)
{
 struct sk_buff *buf = tipc_cltr_prepare_routing_msg(0, c_ptr->addr);
 struct tipc_msg *msg;

 if (buf) {
  msg = buf_msg(buf);
  msg_set_remote_node(msg, dest);
  msg_set_type(msg, ROUTE_REMOVAL);
  tipc_cltr_multicast(c_ptr, buf, lower, upper);
 } else {
  warn("Memory squeeze: broadcast of lost route failed\n");
 }
}
