
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ filter_rcv (struct sock*,struct sk_buff*) ;
 int tipc_reject_msg (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int backlog_rcv(struct sock *sk, struct sk_buff *buf)
{
 u32 res;

 res = filter_rcv(sk, buf);
 if (res)
  tipc_reject_msg(buf, res);
 return 0;
}
