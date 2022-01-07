
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct bictcp {int last_max_cwnd; int loss_cwnd; scalar_t__ epoch_start; } ;


 int BICTCP_BETA_SCALE ;
 int beta ;
 scalar_t__ fast_convergence ;
 struct bictcp* inet_csk_ca (struct sock*) ;
 int max (int,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 bictcp_recalc_ssthresh(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct bictcp *ca = inet_csk_ca(sk);

 ca->epoch_start = 0;


 if (tp->snd_cwnd < ca->last_max_cwnd && fast_convergence)
  ca->last_max_cwnd = (tp->snd_cwnd * (BICTCP_BETA_SCALE + beta))
   / (2 * BICTCP_BETA_SCALE);
 else
  ca->last_max_cwnd = tp->snd_cwnd;

 ca->loss_cwnd = tp->snd_cwnd;

 return max((tp->snd_cwnd * beta) / BICTCP_BETA_SCALE, 2U);
}
