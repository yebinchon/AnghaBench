
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccid3_hc_tx_sock {int ccid3hctx_rtt; int ccid3hctx_last_win_count; int ccid3hctx_t_last_win_count; } ;
typedef int ktime_t ;


 int ktime_us_delta (int ,int ) ;
 scalar_t__ min (int,unsigned int) ;

__attribute__((used)) static inline void ccid3_hc_tx_update_win_count(struct ccid3_hc_tx_sock *hctx,
      ktime_t now)
{
 u32 delta = ktime_us_delta(now, hctx->ccid3hctx_t_last_win_count),
     quarter_rtts = (4 * delta) / hctx->ccid3hctx_rtt;

 if (quarter_rtts > 0) {
  hctx->ccid3hctx_t_last_win_count = now;
  hctx->ccid3hctx_last_win_count += min(quarter_rtts, 5U);
  hctx->ccid3hctx_last_win_count &= 0xF;
 }
}
