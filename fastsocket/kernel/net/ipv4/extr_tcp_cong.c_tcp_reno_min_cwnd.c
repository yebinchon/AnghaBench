
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_ssthresh; } ;
struct sock {int dummy; } ;


 struct tcp_sock* tcp_sk (struct sock const*) ;

u32 tcp_reno_min_cwnd(const struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 return tp->snd_ssthresh/2;
}
