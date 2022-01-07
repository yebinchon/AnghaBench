
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;





 int TIPC_ERR_NO_NAME ;
 int TIPC_ERR_NO_PORT ;
 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ in_scope (int ,int ) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 int msg_destnode (struct tipc_msg*) ;
 scalar_t__ msg_destport (struct tipc_msg*) ;
 scalar_t__ msg_errcode (struct tipc_msg*) ;
 int msg_incr_reroute_cnt (struct tipc_msg*) ;
 scalar_t__ msg_isdata (struct tipc_msg*) ;
 int msg_link_selector (struct tipc_msg*) ;
 scalar_t__ msg_mcast (struct tipc_msg*) ;
 int msg_reroute_cnt (struct tipc_msg*) ;
 scalar_t__ msg_short (struct tipc_msg*) ;
 int msg_user (struct tipc_msg*) ;
 int net_route_named_msg (struct sk_buff*) ;
 int tipc_cltr_recv_routing_table (struct sk_buff*) ;
 int tipc_link_send (struct sk_buff*,int ,int ) ;
 int tipc_named_recv (struct sk_buff*) ;
 int tipc_own_addr ;
 int tipc_port_recv_mcast (struct sk_buff*,int *) ;
 int tipc_port_recv_msg (struct sk_buff*) ;
 int tipc_port_recv_proto_msg (struct sk_buff*) ;
 int tipc_reject_msg (struct sk_buff*,int ) ;

void tipc_net_route_msg(struct sk_buff *buf)
{
 struct tipc_msg *msg;
 u32 dnode;

 if (!buf)
  return;
 msg = buf_msg(buf);

 msg_incr_reroute_cnt(msg);
 if (msg_reroute_cnt(msg) > 6) {
  if (msg_errcode(msg)) {
   msg_dbg(msg, "NET>DISC>:");
   buf_discard(buf);
  } else {
   msg_dbg(msg, "NET>REJ>:");
   tipc_reject_msg(buf, msg_destport(msg) ?
     TIPC_ERR_NO_PORT : TIPC_ERR_NO_NAME);
  }
  return;
 }

 msg_dbg(msg, "tipc_net->rout: ");


 dnode = msg_short(msg) ? tipc_own_addr : msg_destnode(msg);
 if (in_scope(dnode, tipc_own_addr)) {
  if (msg_isdata(msg)) {
   if (msg_mcast(msg))
    tipc_port_recv_mcast(buf, ((void*)0));
   else if (msg_destport(msg))
    tipc_port_recv_msg(buf);
   else
    net_route_named_msg(buf);
   return;
  }
  switch (msg_user(msg)) {
  case 128:
   tipc_cltr_recv_routing_table(buf);
   break;
  case 129:
   tipc_named_recv(buf);
   break;
  case 130:
   tipc_port_recv_proto_msg(buf);
   break;
  default:
   msg_dbg(msg,"DROP/NET/<REC<");
   buf_discard(buf);
  }
  return;
 }


 msg_dbg(msg, "NET>SEND>: ");
 tipc_link_send(buf, dnode, msg_link_selector(msg));
}
