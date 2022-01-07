
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int prior_ssthresh; int snd_ssthresh; int snd_cwnd_stamp; void* snd_cwnd; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ca_ops; } ;
struct TYPE_2__ {void* (* undo_cwnd ) (struct sock*) ;} ;


 int TCP_ECN_withdraw_cwr (struct tcp_sock*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 void* max (void*,int) ;
 void* stub1 (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_stamp ;

__attribute__((used)) static void tcp_undo_cwr(struct sock *sk, const bool undo_ssthresh)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tp->prior_ssthresh) {
  const struct inet_connection_sock *icsk = inet_csk(sk);

  if (icsk->icsk_ca_ops->undo_cwnd)
   tp->snd_cwnd = icsk->icsk_ca_ops->undo_cwnd(sk);
  else
   tp->snd_cwnd = max(tp->snd_cwnd, tp->snd_ssthresh << 1);

  if (undo_ssthresh && tp->prior_ssthresh > tp->snd_ssthresh) {
   tp->snd_ssthresh = tp->prior_ssthresh;
   TCP_ECN_withdraw_cwr(tp);
  }
 } else {
  tp->snd_cwnd = max(tp->snd_cwnd, tp->snd_ssthresh);
 }
 tp->snd_cwnd_stamp = tcp_time_stamp;
}
