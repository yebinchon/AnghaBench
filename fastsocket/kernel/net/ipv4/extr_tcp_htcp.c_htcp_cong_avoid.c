
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; int snd_ssthresh; int snd_cwnd_cnt; int snd_cwnd_clamp; } ;
struct sock {int dummy; } ;
struct htcp {int alpha; int pkts_acked; } ;


 int htcp_alpha_update (struct htcp*) ;
 struct htcp* inet_csk_ca (struct sock*) ;
 int tcp_is_cwnd_limited (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_slow_start (struct tcp_sock*) ;

__attribute__((used)) static void htcp_cong_avoid(struct sock *sk, u32 ack, u32 in_flight)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct htcp *ca = inet_csk_ca(sk);

 if (!tcp_is_cwnd_limited(sk, in_flight))
  return;

 if (tp->snd_cwnd <= tp->snd_ssthresh)
  tcp_slow_start(tp);
 else {



  if ((tp->snd_cwnd_cnt * ca->alpha)>>7 >= tp->snd_cwnd) {
   if (tp->snd_cwnd < tp->snd_cwnd_clamp)
    tp->snd_cwnd++;
   tp->snd_cwnd_cnt = 0;
   htcp_alpha_update(ca);
  } else
   tp->snd_cwnd_cnt += ca->pkts_acked;

  ca->pkts_acked = 1;
 }
}
