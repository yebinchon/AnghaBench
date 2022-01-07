
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {TYPE_1__* sk_prot; int sk_allocation; } ;
struct sk_buff {int dummy; } ;
struct inet_connection_sock {int icsk_rto; } ;
struct TYPE_4__ {int dccpd_type; } ;
struct TYPE_3__ {int max_header; } ;


 int DCCP_INC_STATS (int ) ;
 int DCCP_MIB_ACTIVEOPENS ;
 int DCCP_PKT_REQUEST ;
 int DCCP_RTO_MAX ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int ENOBUFS ;
 int EPROTO ;
 int GFP_KERNEL ;
 int ICSK_TIME_RETRANS ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int dccp_connect_init (struct sock*) ;
 scalar_t__ dccp_feat_finalise_settings (int ) ;
 int dccp_sk (struct sock*) ;
 int dccp_skb_entail (struct sock*,struct sk_buff*) ;
 int dccp_transmit_skb (struct sock*,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int skb_clone (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int ) ;

int dccp_connect(struct sock *sk)
{
 struct sk_buff *skb;
 struct inet_connection_sock *icsk = inet_csk(sk);


 if (dccp_feat_finalise_settings(dccp_sk(sk)))
  return -EPROTO;

 dccp_connect_init(sk);

 skb = alloc_skb(sk->sk_prot->max_header, sk->sk_allocation);
 if (unlikely(skb == ((void*)0)))
  return -ENOBUFS;


 skb_reserve(skb, sk->sk_prot->max_header);

 DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_REQUEST;

 dccp_skb_entail(sk, skb);
 dccp_transmit_skb(sk, skb_clone(skb, GFP_KERNEL));
 DCCP_INC_STATS(DCCP_MIB_ACTIVEOPENS);


 inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
      icsk->icsk_rto, DCCP_RTO_MAX);
 return 0;
}
