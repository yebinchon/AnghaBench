
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_drops; } ;
struct sk_buff {int dummy; } ;


 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int atomic_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int raw_rcv_skb(struct sock * sk, struct sk_buff * skb)
{


 if (sock_queue_rcv_skb(sk, skb) < 0) {
  atomic_inc(&sk->sk_drops);
  kfree_skb(skb);
  return NET_RX_DROP;
 }

 return NET_RX_SUCCESS;
}
