
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid3_hc_rx_sock {int ccid3hcrx_li_hist; int ccid3hcrx_hist; } ;


 int TFRC_RSTATE_TERM ;
 int ccid3_hc_rx_set_state (struct sock*,int ) ;
 struct ccid3_hc_rx_sock* ccid3_hc_rx_sk (struct sock*) ;
 int tfrc_lh_cleanup (int *) ;
 int tfrc_rx_hist_purge (int *) ;

__attribute__((used)) static void ccid3_hc_rx_exit(struct sock *sk)
{
 struct ccid3_hc_rx_sock *hcrx = ccid3_hc_rx_sk(sk);

 ccid3_hc_rx_set_state(sk, TFRC_RSTATE_TERM);

 tfrc_rx_hist_purge(&hcrx->ccid3hcrx_hist);
 tfrc_lh_cleanup(&hcrx->ccid3hcrx_li_hist);
}
