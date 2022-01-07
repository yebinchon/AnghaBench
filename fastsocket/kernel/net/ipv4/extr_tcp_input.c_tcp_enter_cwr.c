
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int snd_cwnd_stamp; int snd_nxt; int high_seq; scalar_t__ snd_cwnd_cnt; int snd_cwnd; int snd_ssthresh; scalar_t__ undo_marker; scalar_t__ bytes_acked; scalar_t__ prior_ssthresh; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; TYPE_1__* icsk_ca_ops; } ;
struct TYPE_2__ {int (* ssthresh ) (struct sock*) ;} ;


 scalar_t__ TCP_CA_CWR ;
 int TCP_ECN_queue_cwr (struct tcp_sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int min (int ,scalar_t__) ;
 int stub1 (struct sock*) ;
 scalar_t__ tcp_packets_in_flight (struct tcp_sock*) ;
 int tcp_set_ca_state (struct sock*,scalar_t__) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_stamp ;

void tcp_enter_cwr(struct sock *sk, const int set_ssthresh)
{
 struct tcp_sock *tp = tcp_sk(sk);
 const struct inet_connection_sock *icsk = inet_csk(sk);

 tp->prior_ssthresh = 0;
 tp->bytes_acked = 0;
 if (icsk->icsk_ca_state < TCP_CA_CWR) {
  tp->undo_marker = 0;
  if (set_ssthresh)
   tp->snd_ssthresh = icsk->icsk_ca_ops->ssthresh(sk);
  tp->snd_cwnd = min(tp->snd_cwnd,
       tcp_packets_in_flight(tp) + 1U);
  tp->snd_cwnd_cnt = 0;
  tp->high_seq = tp->snd_nxt;
  tp->snd_cwnd_stamp = tcp_time_stamp;
  TCP_ECN_queue_cwr(tp);

  tcp_set_ca_state(sk, TCP_CA_CWR);
 }
}
