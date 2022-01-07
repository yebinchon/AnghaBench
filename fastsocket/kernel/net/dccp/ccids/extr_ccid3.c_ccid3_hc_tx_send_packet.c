
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u32 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct dccp_sock {long dccps_syn_rtt; int dccps_hc_tx_insert_options; } ;
struct ccid3_hc_tx_sock {int ccid3hctx_state; scalar_t__ ccid3hctx_s; long ccid3hctx_rtt; scalar_t__ ccid3hctx_x; int ccid3hctx_t_ipi; void* ccid3hctx_t_nom; int ccid3hctx_last_win_count; int ccid3hctx_delta; void* ccid3hctx_t_ld; void* ccid3hctx_t_last_win_count; int ccid3hctx_no_feedback_timer; } ;
typedef int s64 ;
typedef void* ktime_t ;
struct TYPE_2__ {int dccpd_ccval; } ;


 int DCCP_BUG (char*,int ,struct sock*) ;
 long DCCP_FALLBACK_RTT ;
 TYPE_1__* DCCP_SKB_CB (struct sk_buff*) ;
 int EBADMSG ;
 int EINVAL ;
 int TFRC_INITIAL_TIMEOUT ;




 int ccid3_hc_tx_set_state (struct sock*,int) ;
 struct ccid3_hc_tx_sock* ccid3_hc_tx_sk (struct sock*) ;
 int ccid3_hc_tx_update_win_count (struct ccid3_hc_tx_sock*,void*) ;
 int ccid3_pr_debug (char*,long) ;
 int ccid3_update_send_interval (struct ccid3_hc_tx_sock*) ;
 int dccp_role (struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 scalar_t__ jiffies ;
 void* ktime_add_us (void*,int ) ;
 void* ktime_get_real () ;
 int ktime_us_delta (void*,void*) ;
 scalar_t__ rfc3390_initial_rate (struct sock*) ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usecs_to_jiffies (int ) ;

__attribute__((used)) static int ccid3_hc_tx_send_packet(struct sock *sk, struct sk_buff *skb)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct ccid3_hc_tx_sock *hctx = ccid3_hc_tx_sk(sk);
 ktime_t now = ktime_get_real();
 s64 delay;






 if (unlikely(skb->len == 0))
  return -EBADMSG;

 switch (hctx->ccid3hctx_state) {
 case 129:
  sk_reset_timer(sk, &hctx->ccid3hctx_no_feedback_timer,
          (jiffies +
    usecs_to_jiffies(TFRC_INITIAL_TIMEOUT)));
  hctx->ccid3hctx_last_win_count = 0;
  hctx->ccid3hctx_t_last_win_count = now;


  hctx->ccid3hctx_t_nom = now;

  hctx->ccid3hctx_s = skb->len;






  if (dp->dccps_syn_rtt) {
   ccid3_pr_debug("SYN RTT = %uus\n", dp->dccps_syn_rtt);
   hctx->ccid3hctx_rtt = dp->dccps_syn_rtt;
   hctx->ccid3hctx_x = rfc3390_initial_rate(sk);
   hctx->ccid3hctx_t_ld = now;
  } else {






   hctx->ccid3hctx_rtt = DCCP_FALLBACK_RTT;
   hctx->ccid3hctx_x = hctx->ccid3hctx_s;
   hctx->ccid3hctx_x <<= 6;
  }
  ccid3_update_send_interval(hctx);

  ccid3_hc_tx_set_state(sk, 130);
  break;
 case 130:
 case 131:
  delay = ktime_us_delta(hctx->ccid3hctx_t_nom, now);
  ccid3_pr_debug("delay=%ld\n", (long)delay);
  if (delay - (s64)hctx->ccid3hctx_delta >= 1000)
   return (u32)delay / 1000L;

  ccid3_hc_tx_update_win_count(hctx, now);
  break;
 case 128:
  DCCP_BUG("%s(%p) - Illegal state TERM", dccp_role(sk), sk);
  return -EINVAL;
 }


 dp->dccps_hc_tx_insert_options = 1;
 DCCP_SKB_CB(skb)->dccpd_ccval = hctx->ccid3hctx_last_win_count;


 hctx->ccid3hctx_t_nom = ktime_add_us(hctx->ccid3hctx_t_nom,
          hctx->ccid3hctx_t_ipi);
 return 0;
}
