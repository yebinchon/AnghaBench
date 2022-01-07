
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ INT_H_SIZE ;
 int ROUTE_DISTRIBUTOR ;
 struct sk_buff* buf_acquire (scalar_t__) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int memset (char*,int ,scalar_t__) ;
 int msg_init (struct tipc_msg*,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static struct sk_buff *tipc_cltr_prepare_routing_msg(u32 data_size, u32 dest)
{
 u32 size = INT_H_SIZE + data_size;
 struct sk_buff *buf = buf_acquire(size);
 struct tipc_msg *msg;

 if (buf) {
  msg = buf_msg(buf);
  memset((char *)msg, 0, size);
  msg_init(msg, ROUTE_DISTRIBUTOR, 0, INT_H_SIZE, dest);
 }
 return buf;
}
