
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct ccid3_hc_rx_sock {scalar_t__ ccid3hcrx_state; scalar_t__ ccid3hcrx_s; scalar_t__ ccid3hcrx_rtt; int ccid3hcrx_hist; int ccid3hcrx_last_counter; int ccid3hcrx_li_hist; int ccid3hcrx_bytes_recv; } ;
typedef enum ccid3_fback_type { ____Placeholder_ccid3_fback_type } ccid3_fback_type ;
struct TYPE_6__ {int dccph_doff; int dccph_ccval; } ;
struct TYPE_4__ {int dccpor_ndp; } ;
struct TYPE_5__ {TYPE_1__ dccps_options_received; } ;


 int CCID3_FBACK_INITIAL ;
 int CCID3_FBACK_NONE ;
 int CCID3_FBACK_PARAM_CHANGE ;
 int CCID3_FBACK_PERIODIC ;
 int SUB16 (int ,int ) ;
 int TFRC_RSTATE_DATA ;
 scalar_t__ TFRC_RSTATE_NO_DATA ;
 int ccid3_first_li ;
 int ccid3_hc_rx_send_feedback (struct sock*,struct sk_buff*,int) ;
 int ccid3_hc_rx_set_state (struct sock*,int ) ;
 struct ccid3_hc_rx_sock* ccid3_hc_rx_sk (struct sock*) ;
 int dccp_data_packet (struct sk_buff*) ;
 TYPE_3__* dccp_hdr (struct sk_buff*) ;
 TYPE_2__* dccp_sk (struct sock*) ;
 void* tfrc_ewma (scalar_t__,scalar_t__ const,int) ;
 int tfrc_lh_is_initialised (int *) ;
 scalar_t__ tfrc_lh_update_i_mean (int *,struct sk_buff*) ;
 scalar_t__ tfrc_rx_handle_loss (int *,int *,struct sk_buff*,int const,int ,struct sock*) ;
 int tfrc_rx_hist_add_packet (int *,struct sk_buff*,int const) ;
 scalar_t__ tfrc_rx_hist_duplicate (int *,struct sk_buff*) ;
 scalar_t__ tfrc_rx_hist_loss_pending (int *) ;
 scalar_t__ tfrc_rx_hist_sample_rtt (int *,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ccid3_hc_rx_packet_recv(struct sock *sk, struct sk_buff *skb)
{
 struct ccid3_hc_rx_sock *hcrx = ccid3_hc_rx_sk(sk);
 enum ccid3_fback_type do_feedback = CCID3_FBACK_NONE;
 const u64 ndp = dccp_sk(sk)->dccps_options_received.dccpor_ndp;
 const bool is_data_packet = dccp_data_packet(skb);

 if (unlikely(hcrx->ccid3hcrx_state == TFRC_RSTATE_NO_DATA)) {
  if (is_data_packet) {
   const u32 payload = skb->len - dccp_hdr(skb)->dccph_doff * 4;
   do_feedback = CCID3_FBACK_INITIAL;
   ccid3_hc_rx_set_state(sk, TFRC_RSTATE_DATA);
   hcrx->ccid3hcrx_s = payload;





  }
  goto update_records;
 }

 if (tfrc_rx_hist_duplicate(&hcrx->ccid3hcrx_hist, skb))
  return;

 if (is_data_packet) {
  const u32 payload = skb->len - dccp_hdr(skb)->dccph_doff * 4;



  hcrx->ccid3hcrx_s = tfrc_ewma(hcrx->ccid3hcrx_s, payload, 9);
  hcrx->ccid3hcrx_bytes_recv += payload;
 }




 if (tfrc_rx_handle_loss(&hcrx->ccid3hcrx_hist, &hcrx->ccid3hcrx_li_hist,
    skb, ndp, ccid3_first_li, sk)) {
  do_feedback = CCID3_FBACK_PARAM_CHANGE;
  goto done_receiving;
 }

 if (tfrc_rx_hist_loss_pending(&hcrx->ccid3hcrx_hist))
  return;




 if (unlikely(!is_data_packet))
  goto update_records;

 if (!tfrc_lh_is_initialised(&hcrx->ccid3hcrx_li_hist)) {
  const u32 sample = tfrc_rx_hist_sample_rtt(&hcrx->ccid3hcrx_hist, skb);





  if (sample != 0)
   hcrx->ccid3hcrx_rtt = tfrc_ewma(hcrx->ccid3hcrx_rtt, sample, 9);

 } else if (tfrc_lh_update_i_mean(&hcrx->ccid3hcrx_li_hist, skb)) {




  do_feedback = CCID3_FBACK_PARAM_CHANGE;
 }




 if (SUB16(dccp_hdr(skb)->dccph_ccval, hcrx->ccid3hcrx_last_counter) > 3)
  do_feedback = CCID3_FBACK_PERIODIC;

update_records:
 tfrc_rx_hist_add_packet(&hcrx->ccid3hcrx_hist, skb, ndp);

done_receiving:
 if (do_feedback)
  ccid3_hc_rx_send_feedback(sk, skb, do_feedback);
}
