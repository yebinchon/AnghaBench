
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {scalar_t__ snd_cwnd_cnt; scalar_t__ snd_cwnd; scalar_t__ snd_cwnd_clamp; } ;



void tcp_cong_avoid_ai(struct tcp_sock *tp, u32 w)
{
 if (tp->snd_cwnd_cnt >= w) {
  if (tp->snd_cwnd < tp->snd_cwnd_clamp)
   tp->snd_cwnd++;
  tp->snd_cwnd_cnt = 0;
 } else {
  tp->snd_cwnd_cnt++;
 }
}
