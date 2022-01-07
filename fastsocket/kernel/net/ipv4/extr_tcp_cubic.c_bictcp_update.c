
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct bictcp {int ack_cnt; scalar_t__ last_cwnd; int last_time; scalar_t__ epoch_start; scalar_t__ tcp_cwnd; scalar_t__ last_max_cwnd; scalar_t__ bic_K; scalar_t__ bic_origin_point; int delay_min; int cnt; int delayed_ack; } ;
typedef int s32 ;


 int ACK_RATIO_SHIFT ;
 int BICTCP_HZ ;
 int HZ ;
 scalar_t__ beta_scale ;
 scalar_t__ cube_factor ;
 int cube_rtt_scale ;
 scalar_t__ cubic_root (scalar_t__) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ tcp_friendliness ;
 int tcp_time_stamp ;

__attribute__((used)) static inline void bictcp_update(struct bictcp *ca, u32 cwnd)
{
 u64 offs;
 u32 delta, t, bic_target, max_cnt;

 ca->ack_cnt++;

 if (ca->last_cwnd == cwnd &&
     (s32)(tcp_time_stamp - ca->last_time) <= HZ / 32)
  return;

 ca->last_cwnd = cwnd;
 ca->last_time = tcp_time_stamp;

 if (ca->epoch_start == 0) {
  ca->epoch_start = tcp_time_stamp;
  ca->ack_cnt = 1;
  ca->tcp_cwnd = cwnd;

  if (ca->last_max_cwnd <= cwnd) {
   ca->bic_K = 0;
   ca->bic_origin_point = cwnd;
  } else {



   ca->bic_K = cubic_root(cube_factor
            * (ca->last_max_cwnd - cwnd));
   ca->bic_origin_point = ca->last_max_cwnd;
  }
 }
 t = ((tcp_time_stamp + msecs_to_jiffies(ca->delay_min>>3)
       - ca->epoch_start) << BICTCP_HZ) / HZ;

 if (t < ca->bic_K)
  offs = ca->bic_K - t;
 else
  offs = t - ca->bic_K;


 delta = (cube_rtt_scale * offs * offs * offs) >> (10+3*BICTCP_HZ);
 if (t < ca->bic_K)
  bic_target = ca->bic_origin_point - delta;
 else
  bic_target = ca->bic_origin_point + delta;


 if (bic_target > cwnd) {
  ca->cnt = cwnd / (bic_target - cwnd);
 } else {
  ca->cnt = 100 * cwnd;
 }





 if (ca->last_max_cwnd == 0 && ca->cnt > 20)
  ca->cnt = 20;


 if (tcp_friendliness) {
  u32 scale = beta_scale;
  delta = (cwnd * scale) >> 3;
  while (ca->ack_cnt > delta) {
   ca->ack_cnt -= delta;
   ca->tcp_cwnd++;
  }

  if (ca->tcp_cwnd > cwnd){
   delta = ca->tcp_cwnd - cwnd;
   max_cnt = cwnd / delta;
   if (ca->cnt > max_cnt)
    ca->cnt = max_cnt;
  }
 }

 ca->cnt = (ca->cnt << ACK_RATIO_SHIFT) / ca->delayed_ack;
 if (ca->cnt == 0)
  ca->cnt = 1;
}
