
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yeah {int reno_count; scalar_t__ lastQ; scalar_t__ doing_reno_now; } ;
struct tcp_sock {int snd_cwnd_clamp; } ;
struct sock {int dummy; } ;


 struct yeah* inet_csk_ca (struct sock*) ;
 int min_t (int ,int ,int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_vegas_init (struct sock*) ;
 int u32 ;

__attribute__((used)) static void tcp_yeah_init(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct yeah *yeah = inet_csk_ca(sk);

 tcp_vegas_init(sk);

 yeah->doing_reno_now = 0;
 yeah->lastQ = 0;

 yeah->reno_count = 2;



 tp->snd_cwnd_clamp = min_t(u32, tp->snd_cwnd_clamp, 0xffffffff/128);

}
