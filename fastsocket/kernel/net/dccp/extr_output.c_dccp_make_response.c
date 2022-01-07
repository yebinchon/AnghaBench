
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sock {TYPE_1__* sk_prot; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct dst_entry {int dummy; } ;
struct dccp_request_sock {int dreq_service; int dreq_isr; int dreq_iss; } ;
struct dccp_hdr_response {int dummy; } ;
struct dccp_hdr_ext {int dummy; } ;
struct dccp_hdr {int dccph_doff; int dccph_x; void* dccph_type; int dccph_dport; int dccph_sport; } ;
struct TYPE_8__ {int const dccpd_opt_len; int dccpd_seq; void* dccpd_type; } ;
struct TYPE_7__ {int dccph_resp_service; } ;
struct TYPE_6__ {int acked; int rmt_port; int loc_port; } ;
struct TYPE_5__ {int max_header; } ;


 int DCCP_INC_STATS (int ) ;
 int DCCP_MIB_OUTSEGS ;
 void* DCCP_PKT_RESPONSE ;
 TYPE_4__* DCCP_SKB_CB (struct sk_buff*) ;
 int GFP_ATOMIC ;
 int dccp_csum_outgoing (struct sk_buff*) ;
 scalar_t__ dccp_feat_server_ccid_dependencies (struct dccp_request_sock*) ;
 int dccp_hdr_ack_bits (struct sk_buff*) ;
 TYPE_3__* dccp_hdr_response (struct sk_buff*) ;
 int dccp_hdr_set_ack (int ,int ) ;
 int dccp_hdr_set_seq (struct dccp_hdr*,int ) ;
 int dccp_inc_seqno (int *) ;
 scalar_t__ dccp_insert_options_rsk (struct dccp_request_sock*,struct sk_buff*) ;
 struct dccp_request_sock* dccp_rsk (struct request_sock*) ;
 struct dccp_hdr* dccp_zeroed_hdr (struct sk_buff*,int const) ;
 int dst_clone (struct dst_entry*) ;
 TYPE_2__* inet_rsk (struct request_sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int ) ;
 struct sk_buff* sock_wmalloc (struct sock*,int ,int,int ) ;

struct sk_buff *dccp_make_response(struct sock *sk, struct dst_entry *dst,
       struct request_sock *req)
{
 struct dccp_hdr *dh;
 struct dccp_request_sock *dreq;
 const u32 dccp_header_size = sizeof(struct dccp_hdr) +
         sizeof(struct dccp_hdr_ext) +
         sizeof(struct dccp_hdr_response);
 struct sk_buff *skb = sock_wmalloc(sk, sk->sk_prot->max_header, 1,
        GFP_ATOMIC);
 if (skb == ((void*)0))
  return ((void*)0);


 skb_reserve(skb, sk->sk_prot->max_header);

 skb_dst_set(skb, dst_clone(dst));

 dreq = dccp_rsk(req);
 if (inet_rsk(req)->acked)
  dccp_inc_seqno(&dreq->dreq_iss);
 DCCP_SKB_CB(skb)->dccpd_type = DCCP_PKT_RESPONSE;
 DCCP_SKB_CB(skb)->dccpd_seq = dreq->dreq_iss;


 if (dccp_feat_server_ccid_dependencies(dreq))
  goto response_failed;

 if (dccp_insert_options_rsk(dreq, skb))
  goto response_failed;


 dh = dccp_zeroed_hdr(skb, dccp_header_size);

 dh->dccph_sport = inet_rsk(req)->loc_port;
 dh->dccph_dport = inet_rsk(req)->rmt_port;
 dh->dccph_doff = (dccp_header_size +
      DCCP_SKB_CB(skb)->dccpd_opt_len) / 4;
 dh->dccph_type = DCCP_PKT_RESPONSE;
 dh->dccph_x = 1;
 dccp_hdr_set_seq(dh, dreq->dreq_iss);
 dccp_hdr_set_ack(dccp_hdr_ack_bits(skb), dreq->dreq_isr);
 dccp_hdr_response(skb)->dccph_resp_service = dreq->dreq_service;

 dccp_csum_outgoing(skb);


 inet_rsk(req)->acked = 1;
 DCCP_INC_STATS(DCCP_MIB_OUTSEGS);
 return skb;
response_failed:
 kfree_skb(skb);
 return ((void*)0);
}
