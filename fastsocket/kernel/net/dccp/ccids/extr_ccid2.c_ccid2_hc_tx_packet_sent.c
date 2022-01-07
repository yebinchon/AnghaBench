
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dccp_sock {int dccps_l_ack_ratio; scalar_t__ dccps_gss; } ;
struct ccid2_seq {struct ccid2_seq* ccid2s_next; int ccid2s_sent; scalar_t__ ccid2s_acked; scalar_t__ ccid2s_seq; } ;
struct ccid2_hc_tx_sock {int ccid2hctx_cwnd; int ccid2hctx_arsent; struct ccid2_seq* ccid2hctx_seqh; struct ccid2_seq* ccid2hctx_seqt; int ccid2hctx_rtotimer; scalar_t__ ccid2hctx_ackloss; int ccid2hctx_pipe; } ;


 int BUG_ON (int) ;
 int DCCP_CRIT (char*) ;
 int ccid2_change_l_ack_ratio (struct sock*,int) ;
 scalar_t__ ccid2_hc_tx_alloc_seq (struct ccid2_hc_tx_sock*) ;
 int ccid2_hc_tx_check_sanity (struct ccid2_hc_tx_sock*) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 int ccid2_pr_debug (char*,...) ;
 int ccid2_start_rto_timer (struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int jiffies ;
 int timer_pending (int *) ;

__attribute__((used)) static void ccid2_hc_tx_packet_sent(struct sock *sk, int more, unsigned int len)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct ccid2_hc_tx_sock *hctx = ccid2_hc_tx_sk(sk);
 struct ccid2_seq *next;

 hctx->ccid2hctx_pipe++;

 hctx->ccid2hctx_seqh->ccid2s_seq = dp->dccps_gss;
 hctx->ccid2hctx_seqh->ccid2s_acked = 0;
 hctx->ccid2hctx_seqh->ccid2s_sent = jiffies;

 next = hctx->ccid2hctx_seqh->ccid2s_next;

 if (next == hctx->ccid2hctx_seqt) {
  if (ccid2_hc_tx_alloc_seq(hctx)) {
   DCCP_CRIT("packet history - out of memory!");

   return;
  }
  next = hctx->ccid2hctx_seqh->ccid2s_next;
  BUG_ON(next == hctx->ccid2hctx_seqt);
 }
 hctx->ccid2hctx_seqh = next;

 ccid2_pr_debug("cwnd=%d pipe=%d\n", hctx->ccid2hctx_cwnd,
         hctx->ccid2hctx_pipe);
 if (!timer_pending(&hctx->ccid2hctx_rtotimer))
  ccid2_start_rto_timer(sk);
}
