
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct sock {TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
typedef enum dccp_pkt_type { ____Placeholder_dccp_pkt_type } dccp_pkt_type ;
struct TYPE_4__ {int dccpd_type; int dccpd_ack_seq; } ;
struct TYPE_3__ {int max_header; } ;


 int DCCP_CRIT (char*,int ) ;
 TYPE_2__* DCCP_SKB_CB (struct sk_buff*) ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int dccp_packet_name (int const) ;
 int dccp_transmit_skb (struct sock*,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,int ) ;

void dccp_send_sync(struct sock *sk, const u64 ackno,
      const enum dccp_pkt_type pkt_type)
{





 struct sk_buff *skb = alloc_skb(sk->sk_prot->max_header, GFP_ATOMIC);

 if (skb == ((void*)0)) {

  DCCP_CRIT("could not send %s", dccp_packet_name(pkt_type));
  return;
 }


 skb_reserve(skb, sk->sk_prot->max_header);
 DCCP_SKB_CB(skb)->dccpd_type = pkt_type;
 DCCP_SKB_CB(skb)->dccpd_ack_seq = ackno;

 dccp_transmit_skb(sk, skb);
}
