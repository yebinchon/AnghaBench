
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {scalar_t__ sk_state; int sk_write_queue; } ;
struct sk_buff {int len; } ;
struct dccp_sock {int dccps_mss_cache; int dccps_hc_tx_ccid; int dccps_featneg; int dccps_xmit_timer; } ;
struct dccp_skb_cb {void* dccpd_type; } ;
struct TYPE_2__ {int icsk_rto; } ;


 int DCCP_BUG (char*,int) ;
 int DCCP_FEATNEG_OVERHEAD ;
 scalar_t__ DCCP_PARTOPEN ;
 void* DCCP_PKT_DATA ;
 void* DCCP_PKT_DATAACK ;
 int DCCP_RTO_MAX ;
 struct dccp_skb_cb* DCCP_SKB_CB (struct sk_buff*) ;
 int DCCP_WARN (char*,int const) ;
 int EINTR ;
 int ICSK_TIME_DACK ;
 int ccid_hc_tx_packet_sent (int ,struct sock*,int ,int const) ;
 int ccid_hc_tx_send_packet (int ,struct sock*,struct sk_buff*) ;
 scalar_t__ dccp_ack_pending (struct sock*) ;
 int dccp_feat_list_purge (int *) ;
 int dccp_pr_debug (char*,int) ;
 int dccp_send_ack (struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_transmit_skb (struct sock*,struct sk_buff*) ;
 int dccp_wait_for_ccid (struct sock*,struct sk_buff*,int) ;
 TYPE_1__* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,int ,int ) ;
 int inet_csk_schedule_ack (struct sock*) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int list_empty (int *) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 int skb_dequeue (int *) ;
 struct sk_buff* skb_peek (int *) ;

void dccp_write_xmit(struct sock *sk, int block)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct sk_buff *skb;

 while ((skb = skb_peek(&sk->sk_write_queue))) {
  int err = ccid_hc_tx_send_packet(dp->dccps_hc_tx_ccid, sk, skb);

  if (err > 0) {
   if (!block) {
    sk_reset_timer(sk, &dp->dccps_xmit_timer,
      msecs_to_jiffies(err)+jiffies);
    break;
   } else
    err = dccp_wait_for_ccid(sk, skb, err);
   if (err && err != -EINTR)
    DCCP_BUG("err=%d after dccp_wait_for_ccid", err);
  }

  skb_dequeue(&sk->sk_write_queue);
  if (err == 0) {
   struct dccp_skb_cb *dcb = DCCP_SKB_CB(skb);
   const int len = skb->len;

   if (sk->sk_state == DCCP_PARTOPEN) {
    const u32 cur_mps = dp->dccps_mss_cache - DCCP_FEATNEG_OVERHEAD;







    if (!list_empty(&dp->dccps_featneg) && len > cur_mps) {
     DCCP_WARN("Payload too large (%d) for featneg.\n", len);
     dccp_send_ack(sk);
     dccp_feat_list_purge(&dp->dccps_featneg);
    }

    inet_csk_schedule_ack(sk);
    inet_csk_reset_xmit_timer(sk, ICSK_TIME_DACK,
        inet_csk(sk)->icsk_rto,
        DCCP_RTO_MAX);
    dcb->dccpd_type = DCCP_PKT_DATAACK;
   } else if (dccp_ack_pending(sk))
    dcb->dccpd_type = DCCP_PKT_DATAACK;
   else
    dcb->dccpd_type = DCCP_PKT_DATA;

   err = dccp_transmit_skb(sk, skb);
   ccid_hc_tx_packet_sent(dp->dccps_hc_tx_ccid, sk, 0, len);
   if (err)
    DCCP_BUG("err=%d after ccid_hc_tx_packet_sent",
      err);
  } else {
   dccp_pr_debug("packet discarded due to err=%d\n", err);
   kfree_skb(skb);
  }
 }
}
