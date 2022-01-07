
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid2_seq {scalar_t__ ccid2s_seq; scalar_t__ ccid2s_sent; } ;
struct ccid2_hc_tx_sock {int ccid2hctx_cwnd; int ccid2hctx_ssthresh; int ccid2hctx_packets_acked; int ccid2hctx_srtt; unsigned long ccid2hctx_rttvar; int ccid2hctx_rto; scalar_t__ ccid2hctx_lastrtt; } ;


 int HZ ;
 int ccid2_change_srtt (struct ccid2_hc_tx_sock*,long) ;
 int ccid2_hc_tx_kill_rto_timer (struct sock*) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 int ccid2_pr_debug (char*,int,int,int,...) ;
 int ccid2_start_rto_timer (struct sock*) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void ccid2_new_ack(struct sock *sk,
     struct ccid2_seq *seqp,
     unsigned int *maxincr)
{
 struct ccid2_hc_tx_sock *hctx = ccid2_hc_tx_sk(sk);

 if (hctx->ccid2hctx_cwnd < hctx->ccid2hctx_ssthresh) {
  if (*maxincr > 0 && ++hctx->ccid2hctx_packets_acked == 2) {
   hctx->ccid2hctx_cwnd += 1;
   *maxincr -= 1;
   hctx->ccid2hctx_packets_acked = 0;
  }
 } else if (++hctx->ccid2hctx_packets_acked >= hctx->ccid2hctx_cwnd) {
   hctx->ccid2hctx_cwnd += 1;
   hctx->ccid2hctx_packets_acked = 0;
 }


 if (hctx->ccid2hctx_srtt == -1 ||
     time_after(jiffies, hctx->ccid2hctx_lastrtt + hctx->ccid2hctx_srtt)) {
  unsigned long r = (long)jiffies - (long)seqp->ccid2s_sent;
  int s;


  if (hctx->ccid2hctx_srtt == -1) {
   ccid2_pr_debug("R: %lu Time=%lu seq=%llu\n",
           r, jiffies,
           (unsigned long long)seqp->ccid2s_seq);
   ccid2_change_srtt(hctx, r);
   hctx->ccid2hctx_rttvar = r >> 1;
  } else {

   long tmp = hctx->ccid2hctx_srtt - r;
   long srtt;

   if (tmp < 0)
    tmp *= -1;

   tmp >>= 2;
   hctx->ccid2hctx_rttvar *= 3;
   hctx->ccid2hctx_rttvar >>= 2;
   hctx->ccid2hctx_rttvar += tmp;


   srtt = hctx->ccid2hctx_srtt;
   srtt *= 7;
   srtt >>= 3;
   tmp = r >> 3;
   srtt += tmp;
   ccid2_change_srtt(hctx, srtt);
  }
  s = hctx->ccid2hctx_rttvar << 2;

  if (!s)
   s = 1;
  hctx->ccid2hctx_rto = hctx->ccid2hctx_srtt + s;


  s = hctx->ccid2hctx_rto / HZ;


  if (s < 1)
   hctx->ccid2hctx_rto = HZ;


  if (s > 60)
   hctx->ccid2hctx_rto = HZ * 60;

  hctx->ccid2hctx_lastrtt = jiffies;

  ccid2_pr_debug("srtt: %ld rttvar: %ld rto: %ld (HZ=%d) R=%lu\n",
          hctx->ccid2hctx_srtt, hctx->ccid2hctx_rttvar,
          hctx->ccid2hctx_rto, HZ, r);
 }


 ccid2_hc_tx_kill_rto_timer(sk);
 ccid2_start_rto_timer(sk);
}
