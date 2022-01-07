
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {scalar_t__ ccid2hctx_rto; int ccid2hctx_rtotimer; } ;


 int BUG_ON (int ) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 int ccid2_pr_debug (char*,scalar_t__) ;
 scalar_t__ jiffies ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 int timer_pending (int *) ;

__attribute__((used)) static void ccid2_start_rto_timer(struct sock *sk)
{
 struct ccid2_hc_tx_sock *hctx = ccid2_hc_tx_sk(sk);

 ccid2_pr_debug("setting RTO timeout=%ld\n", hctx->ccid2hctx_rto);

 BUG_ON(timer_pending(&hctx->ccid2hctx_rtotimer));
 sk_reset_timer(sk, &hctx->ccid2hctx_rtotimer,
         jiffies + hctx->ccid2hctx_rto);
}
