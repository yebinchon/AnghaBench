
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct illinois {scalar_t__ base_rtt; scalar_t__ max_rtt; int sum_rtt; int cnt_rtt; int acked; } ;
typedef scalar_t__ s32 ;


 scalar_t__ RTT_MAX ;
 struct illinois* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void tcp_illinois_acked(struct sock *sk, u32 pkts_acked, s32 rtt)
{
 struct illinois *ca = inet_csk_ca(sk);

 ca->acked = pkts_acked;


 if (rtt < 0)
  return;


 if (rtt > RTT_MAX)
  rtt = RTT_MAX;


 if (ca->base_rtt > rtt)
  ca->base_rtt = rtt;


 if (ca->max_rtt < rtt)
  ca->max_rtt = rtt;

 ++ca->cnt_rtt;
 ca->sum_rtt += rtt;
}
