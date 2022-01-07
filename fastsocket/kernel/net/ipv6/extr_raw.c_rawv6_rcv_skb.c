
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_drops; scalar_t__ sk_filter; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ checksum; } ;


 int NET_RX_DROP ;
 int atomic_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 TYPE_1__* raw6_sk (struct sock*) ;
 scalar_t__ skb_checksum_complete (struct sk_buff*) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static inline int rawv6_rcv_skb(struct sock * sk, struct sk_buff * skb)
{
 if ((raw6_sk(sk)->checksum || sk->sk_filter) &&
     skb_checksum_complete(skb)) {
  atomic_inc(&sk->sk_drops);
  kfree_skb(skb);
  return NET_RX_DROP;
 }


 if (sock_queue_rcv_skb(sk,skb)<0) {
  atomic_inc(&sk->sk_drops);
  kfree_skb(skb);
  return NET_RX_DROP;
 }

 return 0;
}
