
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {int ccid2hctx_rtotimer; } ;


 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 int ccid2_pr_debug (char*) ;
 int sk_stop_timer (struct sock*,int *) ;

__attribute__((used)) static void ccid2_hc_tx_kill_rto_timer(struct sock *sk)
{
 struct ccid2_hc_tx_sock *hctx = ccid2_hc_tx_sk(sk);

 sk_stop_timer(sk, &hctx->ccid2hctx_rtotimer);
 ccid2_pr_debug("deleted RTO timer\n");
}
