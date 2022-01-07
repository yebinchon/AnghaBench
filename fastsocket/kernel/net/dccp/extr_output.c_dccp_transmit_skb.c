
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int sk; } ;
struct inet_sock {int dport; int sport; } ;
struct inet_connection_sock {TYPE_1__* icsk_af_ops; int icsk_retransmits; } ;
struct dccp_sock {int dccps_iss; int dccps_awl; int dccps_service; int dccps_gss; int dccps_pcslen; int dccps_gsr; } ;
struct dccp_skb_cb {int dccpd_type; int const dccpd_opt_len; int dccpd_reset_code; int dccpd_seq; int dccpd_ccval; int dccpd_ack_seq; } ;
struct dccp_hdr_ext {int dummy; } ;
struct dccp_hdr {int dccph_type; int dccph_doff; int dccph_x; int dccph_cscov; int dccph_ccval; int dccph_dport; int dccph_sport; } ;
struct TYPE_6__ {int dccph_req_service; } ;
struct TYPE_5__ {int dccph_reset_code; } ;
struct TYPE_4__ {int (* queue_xmit ) (struct sk_buff*,int ) ;int (* send_check ) (struct sock*,int ,struct sk_buff*) ;} ;


 int ADD48 (int ,int) ;
 int DCCP_INC_STATS (int ) ;
 int DCCP_MIB_OUTSEGS ;






 struct dccp_skb_cb* DCCP_SKB_CB (struct sk_buff*) ;
 int ENOBUFS ;
 int EPROTO ;
 int WARN_ON (int ) ;
 int dccp_event_ack_sent (struct sock*) ;
 int dccp_hdr_ack_bits (struct sk_buff*) ;
 TYPE_3__* dccp_hdr_request (struct sk_buff*) ;
 TYPE_2__* dccp_hdr_reset (struct sk_buff*) ;
 int dccp_hdr_set_ack (int ,int ) ;
 int dccp_hdr_set_seq (struct dccp_hdr*,int ) ;
 scalar_t__ dccp_insert_options (struct sock*,struct sk_buff*) ;
 int dccp_packet_hdr_len (int) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_update_gss (struct sock*,int ) ;
 struct dccp_hdr* dccp_zeroed_hdr (struct sk_buff*,int const) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int net_xmit_eval (int) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;
 int stub1 (struct sock*,int ,struct sk_buff*) ;
 int stub2 (struct sk_buff*,int ) ;

__attribute__((used)) static int dccp_transmit_skb(struct sock *sk, struct sk_buff *skb)
{
 if (likely(skb != ((void*)0))) {
  const struct inet_sock *inet = inet_sk(sk);
  const struct inet_connection_sock *icsk = inet_csk(sk);
  struct dccp_sock *dp = dccp_sk(sk);
  struct dccp_skb_cb *dcb = DCCP_SKB_CB(skb);
  struct dccp_hdr *dh;

  const u32 dccp_header_size = sizeof(*dh) +
          sizeof(struct dccp_hdr_ext) +
       dccp_packet_hdr_len(dcb->dccpd_type);
  int err, set_ack = 1;
  u64 ackno = dp->dccps_gsr;




  dcb->dccpd_seq = ADD48(dp->dccps_gss, 1);

  switch (dcb->dccpd_type) {
  case 133:
   set_ack = 0;

  case 132:
  case 130:
   break;

  case 131:
   set_ack = 0;

   if (icsk->icsk_retransmits == 0)
    dcb->dccpd_seq = dp->dccps_iss;


  case 129:
  case 128:
   ackno = dcb->dccpd_ack_seq;

  default:






   WARN_ON(skb->sk);
   skb_set_owner_w(skb, sk);
   break;
  }

  if (dccp_insert_options(sk, skb)) {
   kfree_skb(skb);
   return -EPROTO;
  }



  dh = dccp_zeroed_hdr(skb, dccp_header_size);
  dh->dccph_type = dcb->dccpd_type;
  dh->dccph_sport = inet->sport;
  dh->dccph_dport = inet->dport;
  dh->dccph_doff = (dccp_header_size + dcb->dccpd_opt_len) / 4;
  dh->dccph_ccval = dcb->dccpd_ccval;
  dh->dccph_cscov = dp->dccps_pcslen;

  dh->dccph_x = 1;

  dccp_update_gss(sk, dcb->dccpd_seq);
  dccp_hdr_set_seq(dh, dp->dccps_gss);
  if (set_ack)
   dccp_hdr_set_ack(dccp_hdr_ack_bits(skb), ackno);

  switch (dcb->dccpd_type) {
  case 131:
   dccp_hdr_request(skb)->dccph_req_service =
       dp->dccps_service;




   dp->dccps_awl = dp->dccps_iss;
   break;
  case 130:
   dccp_hdr_reset(skb)->dccph_reset_code =
       dcb->dccpd_reset_code;
   break;
  }

  icsk->icsk_af_ops->send_check(sk, 0, skb);

  if (set_ack)
   dccp_event_ack_sent(sk);

  DCCP_INC_STATS(DCCP_MIB_OUTSEGS);

  err = icsk->icsk_af_ops->queue_xmit(skb, 0);
  return net_xmit_eval(err);
 }
 return -ENOBUFS;
}
