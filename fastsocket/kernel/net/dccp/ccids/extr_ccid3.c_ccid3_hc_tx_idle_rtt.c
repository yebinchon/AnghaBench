
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccid3_hc_tx_sock {int ccid3hctx_rtt; int ccid3hctx_t_last_win_count; } ;
typedef int ktime_t ;


 int ktime_us_delta (int ,int ) ;

__attribute__((used)) static u32 ccid3_hc_tx_idle_rtt(struct ccid3_hc_tx_sock *hctx, ktime_t now)
{
 u32 delta = ktime_us_delta(now, hctx->ccid3hctx_t_last_win_count);

 return delta / hctx->ccid3hctx_rtt;
}
