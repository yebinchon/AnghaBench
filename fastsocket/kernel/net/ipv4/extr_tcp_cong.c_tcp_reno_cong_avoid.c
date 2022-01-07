
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; int snd_ssthresh; int bytes_acked; int mss_cache; int snd_cwnd_clamp; } ;
struct sock {int dummy; } ;


 scalar_t__ sysctl_tcp_abc ;
 int tcp_cong_avoid_ai (struct tcp_sock*,int) ;
 int tcp_is_cwnd_limited (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start (struct tcp_sock*) ;

void tcp_reno_cong_avoid(struct sock *sk, u32 ack, u32 in_flight)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (!tcp_is_cwnd_limited(sk, in_flight))
  return;


 if (tp->snd_cwnd <= tp->snd_ssthresh)
  tcp_slow_start(tp);


 else if (sysctl_tcp_abc) {



  if (tp->bytes_acked >= tp->snd_cwnd*tp->mss_cache) {
   tp->bytes_acked -= tp->snd_cwnd*tp->mss_cache;
   if (tp->snd_cwnd < tp->snd_cwnd_clamp)
    tp->snd_cwnd++;
  }
 } else {
  tcp_cong_avoid_ai(tp, tp->snd_cwnd);
 }
}
