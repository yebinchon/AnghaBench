
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int ccid3hctx_no_feedback_timer; int * ccid3hctx_hist; int ccid3hctx_state; } ;
struct ccid {int dummy; } ;


 int TFRC_SSTATE_NO_SENT ;
 int ccid3_hc_tx_no_feedback_timer ;
 struct ccid3_hc_tx_sock* ccid_priv (struct ccid*) ;
 int setup_timer (int *,int ,unsigned long) ;

__attribute__((used)) static int ccid3_hc_tx_init(struct ccid *ccid, struct sock *sk)
{
 struct ccid3_hc_tx_sock *hctx = ccid_priv(ccid);

 hctx->ccid3hctx_state = TFRC_SSTATE_NO_SENT;
 hctx->ccid3hctx_hist = ((void*)0);
 setup_timer(&hctx->ccid3hctx_no_feedback_timer,
   ccid3_hc_tx_no_feedback_timer, (unsigned long)sk);

 return 0;
}
