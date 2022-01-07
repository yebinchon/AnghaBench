
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int dccps_hc_rx_insert_options; } ;
struct ccid3_hc_rx_sock {scalar_t__ ccid3hcrx_state; unsigned int ccid3hcrx_pinv; scalar_t__ ccid3hcrx_bytes_recv; int ccid3hcrx_last_counter; int ccid3hcrx_tstamp_last_feedback; int ccid3hcrx_x_recv; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;
typedef enum ccid3_fback_type { ____Placeholder_ccid3_fback_type } ccid3_fback_type ;
struct TYPE_2__ {int dccph_ccval; } ;





 int DCCP_BUG (char*,long) ;
 scalar_t__ TFRC_RSTATE_TERM ;
 struct ccid3_hc_rx_sock* ccid3_hc_rx_sk (struct sock*) ;
 int ccid3_pr_debug (char*,long,int ,unsigned int) ;
 TYPE_1__* dccp_hdr (struct sk_buff const*) ;
 int dccp_send_ack (struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int ktime_get_real () ;
 scalar_t__ ktime_us_delta (int ,int ) ;
 int scaled_div32 (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ccid3_hc_rx_send_feedback(struct sock *sk,
          const struct sk_buff *skb,
          enum ccid3_fback_type fbtype)
{
 struct ccid3_hc_rx_sock *hcrx = ccid3_hc_rx_sk(sk);
 struct dccp_sock *dp = dccp_sk(sk);
 ktime_t now;
 s64 delta = 0;

 if (unlikely(hcrx->ccid3hcrx_state == TFRC_RSTATE_TERM))
  return;

 now = ktime_get_real();

 switch (fbtype) {
 case 130:
  hcrx->ccid3hcrx_x_recv = 0;
  hcrx->ccid3hcrx_pinv = ~0U;
  break;
 case 129:
  if (hcrx->ccid3hcrx_x_recv > 0)
   break;

 case 128:
  delta = ktime_us_delta(now, hcrx->ccid3hcrx_tstamp_last_feedback);
  if (delta <= 0)
   DCCP_BUG("delta (%ld) <= 0", (long)delta);
  else
   hcrx->ccid3hcrx_x_recv =
    scaled_div32(hcrx->ccid3hcrx_bytes_recv, delta);
  break;
 default:
  return;
 }

 ccid3_pr_debug("Interval %ldusec, X_recv=%u, 1/p=%u\n", (long)delta,
         hcrx->ccid3hcrx_x_recv, hcrx->ccid3hcrx_pinv);

 hcrx->ccid3hcrx_tstamp_last_feedback = now;
 hcrx->ccid3hcrx_last_counter = dccp_hdr(skb)->dccph_ccval;
 hcrx->ccid3hcrx_bytes_recv = 0;

 dp->dccps_hc_rx_insert_options = 1;
 dccp_send_ack(sk);
}
