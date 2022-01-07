
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct yeah {scalar_t__ doing_reno_now; int lastQ; int reno_count; scalar_t__ fast_count; } ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;


 unsigned int TCP_YEAH_DELTA ;
 scalar_t__ TCP_YEAH_RHO ;
 struct yeah* inet_csk_ca (struct sock*) ;
 void* max (int,unsigned int) ;
 int min (int,void*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 tcp_yeah_ssthresh(struct sock *sk) {
 const struct tcp_sock *tp = tcp_sk(sk);
 struct yeah *yeah = inet_csk_ca(sk);
 u32 reduction;

 if (yeah->doing_reno_now < TCP_YEAH_RHO) {
  reduction = yeah->lastQ;

  reduction = min( reduction, max(tp->snd_cwnd>>1, 2U) );

  reduction = max( reduction, tp->snd_cwnd >> TCP_YEAH_DELTA);
 } else
  reduction = max(tp->snd_cwnd>>1, 2U);

 yeah->fast_count = 0;
 yeah->reno_count = max(yeah->reno_count>>1, 2U);

 return tp->snd_cwnd - reduction;
}
