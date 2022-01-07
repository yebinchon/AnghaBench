
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;


 int sock_recv_drops (struct msghdr*,struct sock*,struct sk_buff*) ;
 int sock_recv_timestamp (struct msghdr*,struct sock*,struct sk_buff*) ;

void sock_recv_ts_and_drops(struct msghdr *msg, struct sock *sk,
 struct sk_buff *skb)
{
 sock_recv_timestamp(msg, sk, skb);
 sock_recv_drops(msg, sk, skb);
}
