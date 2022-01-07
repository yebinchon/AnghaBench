
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct veno {int cntrtt; int minrtt; int basertt; int diff; int inc; int doing_veno_now; } ;
struct tcp_sock {int snd_cwnd; int snd_ssthresh; int snd_cwnd_cnt; int snd_cwnd_clamp; } ;
struct sock {int dummy; } ;


 int V_PARAM_SHIFT ;
 int beta ;
 int do_div (int,int) ;
 struct veno* inet_csk_ca (struct sock*) ;
 int tcp_cong_avoid_ai (struct tcp_sock*,int) ;
 int tcp_is_cwnd_limited (struct sock*,int) ;
 int tcp_reno_cong_avoid (struct sock*,int,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start (struct tcp_sock*) ;

__attribute__((used)) static void tcp_veno_cong_avoid(struct sock *sk, u32 ack, u32 in_flight)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct veno *veno = inet_csk_ca(sk);

 if (!veno->doing_veno_now) {
  tcp_reno_cong_avoid(sk, ack, in_flight);
  return;
 }


 if (!tcp_is_cwnd_limited(sk, in_flight))
  return;


 if (veno->cntrtt <= 2) {



  tcp_reno_cong_avoid(sk, ack, in_flight);
 } else {
  u64 target_cwnd;
  u32 rtt;





  rtt = veno->minrtt;

  target_cwnd = (tp->snd_cwnd * veno->basertt);
  target_cwnd <<= V_PARAM_SHIFT;
  do_div(target_cwnd, rtt);

  veno->diff = (tp->snd_cwnd << V_PARAM_SHIFT) - target_cwnd;

  if (tp->snd_cwnd <= tp->snd_ssthresh) {

   tcp_slow_start(tp);
  } else {

   if (veno->diff < beta) {



    tcp_cong_avoid_ai(tp, tp->snd_cwnd);
   } else {



    if (tp->snd_cwnd_cnt >= tp->snd_cwnd) {
     if (veno->inc
         && tp->snd_cwnd <
         tp->snd_cwnd_clamp) {
      tp->snd_cwnd++;
      veno->inc = 0;
     } else
      veno->inc = 1;
     tp->snd_cwnd_cnt = 0;
    } else
     tp->snd_cwnd_cnt++;
   }

  }
  if (tp->snd_cwnd < 2)
   tp->snd_cwnd = 2;
  else if (tp->snd_cwnd > tp->snd_cwnd_clamp)
   tp->snd_cwnd = tp->snd_cwnd_clamp;
 }


 veno->minrtt = 0x7fffffff;
}
