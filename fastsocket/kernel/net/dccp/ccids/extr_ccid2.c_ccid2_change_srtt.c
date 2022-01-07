
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccid2_hc_tx_sock {long ccid2hctx_srtt; } ;


 int ccid2_pr_debug (char*,long) ;

__attribute__((used)) static void ccid2_change_srtt(struct ccid2_hc_tx_sock *hctx, long val)
{
 ccid2_pr_debug("change SRTT to %ld\n", val);
 hctx->ccid2hctx_srtt = val;
}
