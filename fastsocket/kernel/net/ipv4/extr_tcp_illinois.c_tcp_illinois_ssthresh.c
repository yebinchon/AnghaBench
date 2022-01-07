
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct illinois {int beta; } ;


 int BETA_SHIFT ;
 struct illinois* inet_csk_ca (struct sock*) ;
 int max (int,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 tcp_illinois_ssthresh(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct illinois *ca = inet_csk_ca(sk);


 return max(tp->snd_cwnd - ((tp->snd_cwnd * ca->beta) >> BETA_SHIFT), 2U);
}
