
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct dccp_hdr {scalar_t__ dccph_type; int dccph_cscov; int dccph_dport; int dccph_sport; } ;
struct TYPE_6__ {scalar_t__ dccpd_type; int dccpd_reset_code; int dccpd_ack_seq; int dccpd_seq; } ;
struct TYPE_5__ {int dccps_pcrlen; } ;
struct TYPE_4__ {int daddr; int saddr; } ;


 scalar_t__ DCCP_PKT_RESET ;
 int DCCP_PKT_WITHOUT_ACK_SEQ ;
 int DCCP_RESET_CODE_NO_CONNECTION ;
 TYPE_3__* DCCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ DCCP_TIME_WAIT ;
 int DCCP_WARN (char*) ;
 int XFRM_POLICY_IN ;
 struct sock* __inet6_lookup_skb (int *,struct sk_buff*,int ,int ) ;
 int dccp_hashinfo ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 int dccp_hdr_ack_seq (struct sk_buff*) ;
 int dccp_hdr_seq (struct dccp_hdr const*) ;
 scalar_t__ dccp_invalid_packet (struct sk_buff*) ;
 scalar_t__ dccp_packet_without_ack (struct sk_buff*) ;
 int dccp_pr_debug (char*,...) ;
 TYPE_2__* dccp_sk (struct sock*) ;
 scalar_t__ dccp_v6_csum_finish (struct sk_buff*,int *,int *) ;
 int dccp_v6_ctl_send_reset (struct sock*,struct sk_buff*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ sk_receive_skb (struct sock*,struct sk_buff*,int) ;
 int sock_put (struct sock*) ;
 int xfrm6_policy_check (struct sock*,int ,struct sk_buff*) ;

__attribute__((used)) static int dccp_v6_rcv(struct sk_buff *skb)
{
 const struct dccp_hdr *dh;
 struct sock *sk;
 int min_cov;



 if (dccp_invalid_packet(skb))
  goto discard_it;


 if (dccp_v6_csum_finish(skb, &ipv6_hdr(skb)->saddr,
         &ipv6_hdr(skb)->daddr)) {
  DCCP_WARN("dropped packet with invalid checksum\n");
  goto discard_it;
 }

 dh = dccp_hdr(skb);

 DCCP_SKB_CB(skb)->dccpd_seq = dccp_hdr_seq(dh);
 DCCP_SKB_CB(skb)->dccpd_type = dh->dccph_type;

 if (dccp_packet_without_ack(skb))
  DCCP_SKB_CB(skb)->dccpd_ack_seq = DCCP_PKT_WITHOUT_ACK_SEQ;
 else
  DCCP_SKB_CB(skb)->dccpd_ack_seq = dccp_hdr_ack_seq(skb);



 sk = __inet6_lookup_skb(&dccp_hashinfo, skb,
           dh->dccph_sport, dh->dccph_dport);




 if (sk == ((void*)0)) {
  dccp_pr_debug("failed to look up flow ID in table and "
         "get corresponding socket\n");
  goto no_dccp_socket;
 }







 if (sk->sk_state == DCCP_TIME_WAIT) {
  dccp_pr_debug("sk->sk_state == DCCP_TIME_WAIT: do_time_wait\n");
  inet_twsk_put(inet_twsk(sk));
  goto no_dccp_socket;
 }






 min_cov = dccp_sk(sk)->dccps_pcrlen;
 if (dh->dccph_cscov && (min_cov == 0 || dh->dccph_cscov < min_cov)) {
  dccp_pr_debug("Packet CsCov %d does not satisfy MinCsCov %d\n",
         dh->dccph_cscov, min_cov);

  goto discard_and_relse;
 }

 if (!xfrm6_policy_check(sk, XFRM_POLICY_IN, skb))
  goto discard_and_relse;

 return sk_receive_skb(sk, skb, 1) ? -1 : 0;

no_dccp_socket:
 if (!xfrm6_policy_check(((void*)0), XFRM_POLICY_IN, skb))
  goto discard_it;






 if (dh->dccph_type != DCCP_PKT_RESET) {
  DCCP_SKB_CB(skb)->dccpd_reset_code =
     DCCP_RESET_CODE_NO_CONNECTION;
  dccp_v6_ctl_send_reset(sk, skb);
 }

discard_it:
 kfree_skb(skb);
 return 0;

discard_and_relse:
 sock_put(sk);
 goto discard_it;
}
