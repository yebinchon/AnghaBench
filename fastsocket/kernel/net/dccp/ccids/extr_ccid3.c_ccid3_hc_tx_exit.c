
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int ccid3hctx_hist; int ccid3hctx_no_feedback_timer; } ;


 int TFRC_SSTATE_TERM ;
 int ccid3_hc_tx_set_state (struct sock*,int ) ;
 struct ccid3_hc_tx_sock* ccid3_hc_tx_sk (struct sock*) ;
 int sk_stop_timer (struct sock*,int *) ;
 int tfrc_tx_hist_purge (int *) ;

__attribute__((used)) static void ccid3_hc_tx_exit(struct sock *sk)
{
 struct ccid3_hc_tx_sock *hctx = ccid3_hc_tx_sk(sk);

 ccid3_hc_tx_set_state(sk, TFRC_SSTATE_TERM);
 sk_stop_timer(sk, &hctx->ccid3hctx_no_feedback_timer);

 tfrc_tx_hist_purge(&hctx->ccid3hctx_hist);
}
