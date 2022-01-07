
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ LONG_H_SIZE ;
 int NAME_DISTRIBUTOR ;
 struct sk_buff* buf_acquire (scalar_t__) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int msg_init (struct tipc_msg*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int msg_set_size (struct tipc_msg*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *named_prepare_buf(u32 type, u32 size, u32 dest)
{
 struct sk_buff *buf = buf_acquire(LONG_H_SIZE + size);
 struct tipc_msg *msg;

 if (buf != ((void*)0)) {
  msg = buf_msg(buf);
  msg_init(msg, NAME_DISTRIBUTOR, type, LONG_H_SIZE, dest);
  msg_set_size(msg, LONG_H_SIZE + size);
 }
 return buf;
}
