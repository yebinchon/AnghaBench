
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_role; int * dccps_hc_rx_ackvec; } ;
struct dccp_skb_cb {scalar_t__ dccpd_ack_seq; int dccpd_seq; void* dccpd_reset_code; } ;
struct dccp_hdr {scalar_t__ dccph_type; } ;
struct TYPE_4__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_3__ {scalar_t__ (* conn_request ) (struct sock*,struct sk_buff*) ;} ;


 int DCCP_ACKVEC_STATE_RECEIVED ;
 int DCCP_CLOSED ;
 int DCCP_LISTEN ;

 scalar_t__ DCCP_PKT_ACK ;
 scalar_t__ DCCP_PKT_CLOSE ;
 scalar_t__ DCCP_PKT_CLOSEREQ ;
 scalar_t__ DCCP_PKT_DATA ;
 scalar_t__ DCCP_PKT_DATAACK ;
 scalar_t__ DCCP_PKT_REQUEST ;
 scalar_t__ DCCP_PKT_RESET ;
 scalar_t__ DCCP_PKT_RESPONSE ;
 scalar_t__ DCCP_PKT_SYNC ;
 scalar_t__ DCCP_PKT_SYNCACK ;
 scalar_t__ DCCP_PKT_WITHOUT_ACK_SEQ ;

 void* DCCP_RESET_CODE_NO_CONNECTION ;

 scalar_t__ DCCP_ROLE_CLIENT ;
 struct dccp_skb_cb* DCCP_SKB_CB (struct sk_buff*) ;
 int POLL_OUT ;
 int SOCK_WAKE_IO ;
 int __kfree_skb (struct sk_buff*) ;
 scalar_t__ dccp_ackvec_add (int *,struct sock*,int ,int ) ;
 scalar_t__ dccp_check_seqno (struct sock*,struct sk_buff*) ;
 int dccp_deliver_input_to_ccids (struct sock*,struct sk_buff*) ;
 int dccp_event_ack_recv (struct sock*,struct sk_buff*) ;
 scalar_t__ dccp_parse_options (struct sock*,int *,struct sk_buff*) ;
 scalar_t__ dccp_rcv_close (struct sock*,struct sk_buff*) ;
 scalar_t__ dccp_rcv_closereq (struct sock*,struct sk_buff*) ;
 int dccp_rcv_request_sent_state_process (struct sock*,struct sk_buff*,struct dccp_hdr*,unsigned int) ;
 int dccp_rcv_reset (struct sock*,struct sk_buff*) ;
 int dccp_rcv_respond_partopen_state_process (struct sock*,struct sk_buff*,struct dccp_hdr*,unsigned int) ;
 int dccp_send_sync (struct sock*,int ,scalar_t__) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 TYPE_2__* inet_csk (struct sock*) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 scalar_t__ stub1 (struct sock*,struct sk_buff*) ;
 int stub2 (struct sock*) ;
 scalar_t__ unlikely (int) ;

int dccp_rcv_state_process(struct sock *sk, struct sk_buff *skb,
      struct dccp_hdr *dh, unsigned len)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct dccp_skb_cb *dcb = DCCP_SKB_CB(skb);
 const int old_state = sk->sk_state;
 int queued = 0;
 if (sk->sk_state == DCCP_LISTEN) {
  if (dh->dccph_type == DCCP_PKT_REQUEST) {
   if (inet_csk(sk)->icsk_af_ops->conn_request(sk,
            skb) < 0)
    return 1;
   goto discard;
  }
  if (dh->dccph_type == DCCP_PKT_RESET)
   goto discard;


  dcb->dccpd_reset_code = DCCP_RESET_CODE_NO_CONNECTION;
  return 1;
 } else if (sk->sk_state == DCCP_CLOSED) {
  dcb->dccpd_reset_code = DCCP_RESET_CODE_NO_CONNECTION;
  return 1;
 }

 if (sk->sk_state != 129 && sk->sk_state != 128) {
  if (dccp_check_seqno(sk, skb))
   goto discard;




  if (dccp_parse_options(sk, ((void*)0), skb))
   return 1;

  if (dcb->dccpd_ack_seq != DCCP_PKT_WITHOUT_ACK_SEQ)
   dccp_event_ack_recv(sk, skb);

  if (dp->dccps_hc_rx_ackvec != ((void*)0) &&
      dccp_ackvec_add(dp->dccps_hc_rx_ackvec, sk,
        DCCP_SKB_CB(skb)->dccpd_seq,
        DCCP_ACKVEC_STATE_RECEIVED))
   goto discard;

  dccp_deliver_input_to_ccids(sk, skb);
 }
 if (dh->dccph_type == DCCP_PKT_RESET) {
  dccp_rcv_reset(sk, skb);
  return 0;
 } else if ((dp->dccps_role != DCCP_ROLE_CLIENT &&
      dh->dccph_type == DCCP_PKT_RESPONSE) ||
      (dp->dccps_role == DCCP_ROLE_CLIENT &&
       dh->dccph_type == DCCP_PKT_REQUEST) ||
      (sk->sk_state == 128 &&
       dh->dccph_type == DCCP_PKT_DATA)) {
  dccp_send_sync(sk, dcb->dccpd_seq, DCCP_PKT_SYNC);
  goto discard;
 } else if (dh->dccph_type == DCCP_PKT_CLOSEREQ) {
  if (dccp_rcv_closereq(sk, skb))
   return 0;
  goto discard;
 } else if (dh->dccph_type == DCCP_PKT_CLOSE) {
  if (dccp_rcv_close(sk, skb))
   return 0;
  goto discard;
 }

 switch (sk->sk_state) {
 case 129:
  queued = dccp_rcv_request_sent_state_process(sk, skb, dh, len);
  if (queued >= 0)
   return queued;

  __kfree_skb(skb);
  return 0;

 case 128:
 case 130:
  queued = dccp_rcv_respond_partopen_state_process(sk, skb,
         dh, len);
  break;
 }

 if (dh->dccph_type == DCCP_PKT_ACK ||
     dh->dccph_type == DCCP_PKT_DATAACK) {
  switch (old_state) {
  case 130:
   sk->sk_state_change(sk);
   sk_wake_async(sk, SOCK_WAKE_IO, POLL_OUT);
   break;
  }
 } else if (unlikely(dh->dccph_type == DCCP_PKT_SYNC)) {
  dccp_send_sync(sk, dcb->dccpd_seq, DCCP_PKT_SYNCACK);
  goto discard;
 }

 if (!queued) {
discard:
  __kfree_skb(skb);
 }
 return 0;
}
