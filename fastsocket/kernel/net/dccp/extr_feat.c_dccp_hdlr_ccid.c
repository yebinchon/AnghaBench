
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sock {int dummy; } ;
struct dccp_sock {struct ccid* dccps_hc_tx_ccid; struct ccid* dccps_hc_rx_ccid; } ;
struct ccid {int dummy; } ;


 int ENOMEM ;
 int ccid_hc_rx_delete (struct ccid*,struct sock*) ;
 int ccid_hc_tx_delete (struct ccid*,struct sock*) ;
 struct ccid* ccid_new (int ,struct sock*,int) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static int dccp_hdlr_ccid(struct sock *sk, u64 ccid, bool rx)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct ccid *new_ccid = ccid_new(ccid, sk, rx);

 if (new_ccid == ((void*)0))
  return -ENOMEM;

 if (rx) {
  ccid_hc_rx_delete(dp->dccps_hc_rx_ccid, sk);
  dp->dccps_hc_rx_ccid = new_ccid;
 } else {
  ccid_hc_tx_delete(dp->dccps_hc_tx_ccid, sk);
  dp->dccps_hc_tx_ccid = new_ccid;
 }
 return 0;
}
