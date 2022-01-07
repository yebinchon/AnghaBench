
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_l_ack_ratio; } ;
struct TYPE_2__ {int ccid2hctx_cwnd; } ;


 scalar_t__ DCCPF_ACK_RATIO_MAX ;
 int DCCP_WARN (char*,scalar_t__,scalar_t__) ;
 scalar_t__ DIV_ROUND_UP (int ,int) ;
 TYPE_1__* ccid2_hc_tx_sk (struct sock*) ;
 int ccid2_pr_debug (char*,scalar_t__) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static void ccid2_change_l_ack_ratio(struct sock *sk, u32 val)
{
 struct dccp_sock *dp = dccp_sk(sk);
 u32 max_ratio = DIV_ROUND_UP(ccid2_hc_tx_sk(sk)->ccid2hctx_cwnd, 2);







 if (val == 0 || val > max_ratio) {
  DCCP_WARN("Limiting Ack Ratio (%u) to %u\n", val, max_ratio);
  val = max_ratio;
 }
 if (val > DCCPF_ACK_RATIO_MAX)
  val = DCCPF_ACK_RATIO_MAX;

 if (val == dp->dccps_l_ack_ratio)
  return;

 ccid2_pr_debug("changing local ack ratio to %u\n", val);
 dp->dccps_l_ack_ratio = val;
}
