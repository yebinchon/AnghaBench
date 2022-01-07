
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct dccp_skb_cb {int dccpd_reset_code; scalar_t__ dccpd_ack_seq; int dccpd_seq; int dccpd_reset_data; } ;
struct dccp_hdr_reset {int dccph_reset_code; int * dccph_reset_data; } ;
struct dccp_hdr_ext {int dummy; } ;
struct dccp_hdr {int dccph_doff; int dccph_x; int dccph_type; int dccph_sport; int dccph_dport; } ;
struct TYPE_2__ {int max_header; } ;


 int ADD48 (scalar_t__,int) ;
 int DCCP_PKT_RESET ;
 scalar_t__ DCCP_PKT_WITHOUT_ACK_SEQ ;



 struct dccp_skb_cb* DCCP_SKB_CB (struct sk_buff*) ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int dccp_csum_outgoing (struct sk_buff*) ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 int dccp_hdr_ack_bits (struct sk_buff*) ;
 struct dccp_hdr_reset* dccp_hdr_reset (struct sk_buff*) ;
 int dccp_hdr_set_ack (int ,int ) ;
 int dccp_hdr_set_seq (struct dccp_hdr*,int ) ;
 struct dccp_hdr* dccp_zeroed_hdr (struct sk_buff*,int const) ;
 int memcpy (int *,int ,int) ;
 int skb_reserve (struct sk_buff*,int ) ;

struct sk_buff *dccp_ctl_make_reset(struct sock *sk, struct sk_buff *rcv_skb)
{
 struct dccp_hdr *rxdh = dccp_hdr(rcv_skb), *dh;
 struct dccp_skb_cb *dcb = DCCP_SKB_CB(rcv_skb);
 const u32 dccp_hdr_reset_len = sizeof(struct dccp_hdr) +
           sizeof(struct dccp_hdr_ext) +
           sizeof(struct dccp_hdr_reset);
 struct dccp_hdr_reset *dhr;
 struct sk_buff *skb;

 skb = alloc_skb(sk->sk_prot->max_header, GFP_ATOMIC);
 if (skb == ((void*)0))
  return ((void*)0);

 skb_reserve(skb, sk->sk_prot->max_header);


 dh = dccp_zeroed_hdr(skb, dccp_hdr_reset_len);
 dh->dccph_type = DCCP_PKT_RESET;
 dh->dccph_sport = rxdh->dccph_dport;
 dh->dccph_dport = rxdh->dccph_sport;
 dh->dccph_doff = dccp_hdr_reset_len / 4;
 dh->dccph_x = 1;

 dhr = dccp_hdr_reset(skb);
 dhr->dccph_reset_code = dcb->dccpd_reset_code;

 switch (dcb->dccpd_reset_code) {
 case 128:
  dhr->dccph_reset_data[0] = rxdh->dccph_type;
  break;
 case 129:
 case 130:
  memcpy(dhr->dccph_reset_data, dcb->dccpd_reset_data, 3);
  break;
 }





 if (dcb->dccpd_ack_seq != DCCP_PKT_WITHOUT_ACK_SEQ)
  dccp_hdr_set_seq(dh, ADD48(dcb->dccpd_ack_seq, 1));
 dccp_hdr_set_ack(dccp_hdr_ack_bits(skb), dcb->dccpd_seq);

 dccp_csum_outgoing(skb);
 return skb;
}
