
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {scalar_t__ snd_cwnd; } ;
struct sock {int dummy; } ;
struct illinois {scalar_t__ cnt_rtt; int beta; int alpha; } ;


 int ALPHA_BASE ;
 int BETA_BASE ;
 int alpha (struct illinois*,int ,int ) ;
 int avg_delay (struct illinois*) ;
 int beta (int ,int ) ;
 struct illinois* inet_csk_ca (struct sock*) ;
 int max_delay (struct illinois*) ;
 int rtt_reset (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ win_thresh ;

__attribute__((used)) static void update_params(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct illinois *ca = inet_csk_ca(sk);

 if (tp->snd_cwnd < win_thresh) {
  ca->alpha = ALPHA_BASE;
  ca->beta = BETA_BASE;
 } else if (ca->cnt_rtt > 0) {
  u32 dm = max_delay(ca);
  u32 da = avg_delay(ca);

  ca->alpha = alpha(ca, da, dm);
  ca->beta = beta(da, dm);
 }

 rtt_reset(sk);
}
