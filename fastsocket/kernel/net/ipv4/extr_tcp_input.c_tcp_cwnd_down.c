
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_cwnd_cnt; scalar_t__ snd_cwnd; int snd_cwnd_stamp; } ;
struct sock {int dummy; } ;


 int FLAG_ANY_PROGRESS ;
 int FLAG_DSACKING_ACK ;
 int FLAG_NOT_DUP ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ tcp_cwnd_min (struct sock*) ;
 scalar_t__ tcp_is_reno (struct tcp_sock*) ;
 scalar_t__ tcp_packets_in_flight (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_stamp ;

__attribute__((used)) static void tcp_cwnd_down(struct sock *sk, int flag)
{
 struct tcp_sock *tp = tcp_sk(sk);
 int decr = tp->snd_cwnd_cnt + 1;

 if ((flag & (FLAG_ANY_PROGRESS | FLAG_DSACKING_ACK)) ||
     (tcp_is_reno(tp) && !(flag & FLAG_NOT_DUP))) {
  tp->snd_cwnd_cnt = decr & 1;
  decr >>= 1;

  if (decr && tp->snd_cwnd > tcp_cwnd_min(sk))
   tp->snd_cwnd -= decr;

  tp->snd_cwnd = min(tp->snd_cwnd, tcp_packets_in_flight(tp) + 1);
  tp->snd_cwnd_stamp = tcp_time_stamp;
 }
}
