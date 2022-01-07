
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid2_hc_tx_sock {scalar_t__ ccid2hctx_pipe; } ;


 int DCCP_BUG (char*) ;
 int ccid2_hc_tx_kill_rto_timer (struct sock*) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;

__attribute__((used)) static void ccid2_hc_tx_dec_pipe(struct sock *sk)
{
 struct ccid2_hc_tx_sock *hctx = ccid2_hc_tx_sk(sk);

 if (hctx->ccid2hctx_pipe == 0)
  DCCP_BUG("pipe == 0");
 else
  hctx->ccid2hctx_pipe--;

 if (hctx->ccid2hctx_pipe == 0)
  ccid2_hc_tx_kill_rto_timer(sk);
}
