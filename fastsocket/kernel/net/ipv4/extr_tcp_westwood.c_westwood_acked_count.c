
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct westwood {scalar_t__ cumul_ack; scalar_t__ snd_una; scalar_t__ accounted; } ;
struct tcp_sock {scalar_t__ snd_una; scalar_t__ mss_cache; } ;
struct sock {int dummy; } ;


 struct westwood* inet_csk_ca (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static inline u32 westwood_acked_count(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 struct westwood *w = inet_csk_ca(sk);

 w->cumul_ack = tp->snd_una - w->snd_una;




 if (!w->cumul_ack) {
  w->accounted += tp->mss_cache;
  w->cumul_ack = tp->mss_cache;
 }

 if (w->cumul_ack > tp->mss_cache) {

  if (w->accounted >= w->cumul_ack) {
   w->accounted -= w->cumul_ack;
   w->cumul_ack = tp->mss_cache;
  } else {
   w->cumul_ack -= w->accounted;
   w->accounted = 0;
  }
 }

 w->snd_una = tp->snd_una;

 return w->cumul_ack;
}
