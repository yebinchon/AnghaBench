
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_data_ready ) (struct sock*,int) ;int sk_receive_queue; } ;
struct sk_buff {int len; } ;


 int skb_queue_tail (int *,struct sk_buff*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*,int) ;

int netlink_sendskb(struct sock *sk, struct sk_buff *skb)
{
 int len = skb->len;

 skb_queue_tail(&sk->sk_receive_queue, skb);
 sk->sk_data_ready(sk, len);
 sock_put(sk);
 return len;
}
