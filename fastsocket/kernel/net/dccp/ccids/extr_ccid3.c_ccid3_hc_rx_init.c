
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid3_hc_rx_sock {int ccid3hcrx_hist; int ccid3hcrx_li_hist; int ccid3hcrx_state; } ;
struct ccid {int dummy; } ;


 int TFRC_RSTATE_NO_DATA ;
 struct ccid3_hc_rx_sock* ccid_priv (struct ccid*) ;
 int tfrc_lh_init (int *) ;
 int tfrc_rx_hist_alloc (int *) ;

__attribute__((used)) static int ccid3_hc_rx_init(struct ccid *ccid, struct sock *sk)
{
 struct ccid3_hc_rx_sock *hcrx = ccid_priv(ccid);

 hcrx->ccid3hcrx_state = TFRC_RSTATE_NO_DATA;
 tfrc_lh_init(&hcrx->ccid3hcrx_li_hist);
 return tfrc_rx_hist_alloc(&hcrx->ccid3hcrx_hist);
}
