
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;


 int LONG_H_SIZE ;
 struct sk_buff* buf_acquire (int ) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_dbg (struct tipc_msg*,char*) ;
 int msg_init (struct tipc_msg*,int ,int ,int ,int ) ;
 int msg_set_destport (struct tipc_msg*,int ) ;
 int msg_set_errcode (struct tipc_msg*,int ) ;
 int msg_set_msgcnt (struct tipc_msg*,int ) ;
 int msg_set_orignode (struct tipc_msg*,int ) ;
 int msg_set_origport (struct tipc_msg*,int ) ;
 int msg_set_transp_seqno (struct tipc_msg*,int ) ;

__attribute__((used)) static struct sk_buff *port_build_proto_msg(u32 destport, u32 destnode,
         u32 origport, u32 orignode,
         u32 usr, u32 type, u32 err,
         u32 seqno, u32 ack)
{
 struct sk_buff *buf;
 struct tipc_msg *msg;

 buf = buf_acquire(LONG_H_SIZE);
 if (buf) {
  msg = buf_msg(buf);
  msg_init(msg, usr, type, LONG_H_SIZE, destnode);
  msg_set_errcode(msg, err);
  msg_set_destport(msg, destport);
  msg_set_origport(msg, origport);
  msg_set_orignode(msg, orignode);
  msg_set_transp_seqno(msg, seqno);
  msg_set_msgcnt(msg, ack);
  msg_dbg(msg, "PORT>SEND>:");
 }
 return buf;
}
