
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;


 int INT_H_SIZE ;
 scalar_t__ align (int ) ;
 int buf_discard (struct sk_buff*) ;
 struct sk_buff* buf_extract (struct sk_buff*,int ) ;
 int buf_msg (struct sk_buff*) ;
 int msg_dbg (int ,char*) ;
 int msg_msgcnt (int ) ;
 int msg_size (int ) ;
 int tipc_net_route_msg (struct sk_buff*) ;
 int warn (char*) ;

void tipc_link_recv_bundle(struct sk_buff *buf)
{
 u32 msgcount = msg_msgcnt(buf_msg(buf));
 u32 pos = INT_H_SIZE;
 struct sk_buff *obuf;

 msg_dbg(buf_msg(buf), "<BNDL<: ");
 while (msgcount--) {
  obuf = buf_extract(buf, pos);
  if (obuf == ((void*)0)) {
   warn("Link unable to unbundle message(s)\n");
   break;
  }
  pos += align(msg_size(buf_msg(obuf)));
  msg_dbg(buf_msg(obuf), "     /");
  tipc_net_route_msg(obuf);
 }
 buf_discard(buf);
}
