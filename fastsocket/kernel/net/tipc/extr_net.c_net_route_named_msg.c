
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;


 int TIPC_ERR_NO_NAME ;
 scalar_t__ addr_domain (int ) ;
 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int dbg (char*,int ,int ,scalar_t__,scalar_t__) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 int msg_lookup_scope (struct tipc_msg*) ;
 int msg_named (struct tipc_msg*) ;
 int msg_nameinst (struct tipc_msg*) ;
 int msg_nametype (struct tipc_msg*) ;
 int msg_set_destnode (struct tipc_msg*,scalar_t__) ;
 int msg_set_destport (struct tipc_msg*,scalar_t__) ;
 scalar_t__ tipc_nametbl_translate (int ,int ,scalar_t__*) ;
 int tipc_net_route_msg (struct sk_buff*) ;
 int tipc_reject_msg (struct sk_buff*,int ) ;

__attribute__((used)) static void net_route_named_msg(struct sk_buff *buf)
{
 struct tipc_msg *msg = buf_msg(buf);
 u32 dnode;
 u32 dport;

 if (!msg_named(msg)) {
  msg_dbg(msg, "tipc_net->drop_nam:");
  buf_discard(buf);
  return;
 }

 dnode = addr_domain(msg_lookup_scope(msg));
 dport = tipc_nametbl_translate(msg_nametype(msg), msg_nameinst(msg), &dnode);
 dbg("tipc_net->lookup<%u,%u>-><%u,%x>\n",
     msg_nametype(msg), msg_nameinst(msg), dport, dnode);
 if (dport) {
  msg_set_destnode(msg, dnode);
  msg_set_destport(msg, dport);
  tipc_net_route_msg(buf);
  return;
 }
 msg_dbg(msg, "tipc_net->rej:NO NAME: ");
 tipc_reject_msg(buf, TIPC_ERR_NO_NAME);
}
