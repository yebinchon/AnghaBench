
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {scalar_t__ dropcount; } ;
struct msghdr {int dummy; } ;
typedef int __u32 ;


 int SOCK_RXQ_OVFL ;
 int SOL_SOCKET ;
 int SO_RXQ_OVFL ;
 int put_cmsg (struct msghdr*,int ,int ,int,scalar_t__*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

inline void sock_recv_drops(struct msghdr *msg, struct sock *sk, struct sk_buff *skb)
{
 if (sock_flag(sk, SOCK_RXQ_OVFL) && skb && skb->dropcount)
  put_cmsg(msg, SOL_SOCKET, SO_RXQ_OVFL,
   sizeof(__u32), &skb->dropcount);
}
