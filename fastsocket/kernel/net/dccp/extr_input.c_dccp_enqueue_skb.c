
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_data_ready ) (struct sock*,int ) ;int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int dccph_doff; } ;


 int __skb_pull (struct sk_buff*,int) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 TYPE_1__* dccp_hdr (struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int stub1 (struct sock*,int ) ;

__attribute__((used)) static void dccp_enqueue_skb(struct sock *sk, struct sk_buff *skb)
{
 __skb_pull(skb, dccp_hdr(skb)->dccph_doff * 4);
 __skb_queue_tail(&sk->sk_receive_queue, skb);
 skb_set_owner_r(skb, sk);
 sk->sk_data_ready(sk, 0);
}
