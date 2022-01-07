
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int kfree_skb (struct sk_buff*) ;
 int x25_process_rx_frame (struct sock*,struct sk_buff*) ;

int x25_backlog_rcv(struct sock *sk, struct sk_buff *skb)
{
 int queued = x25_process_rx_frame(sk, skb);

 if (!queued)
  kfree_skb(skb);

 return 0;
}
