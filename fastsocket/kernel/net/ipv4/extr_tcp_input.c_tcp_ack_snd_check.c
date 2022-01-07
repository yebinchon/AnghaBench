
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __tcp_ack_snd_check (struct sock*,int) ;
 int inet_csk_ack_scheduled (struct sock*) ;

__attribute__((used)) static inline void tcp_ack_snd_check(struct sock *sk)
{
 if (!inet_csk_ack_scheduled(sk)) {

  return;
 }
 __tcp_ack_snd_check(sk, 1);
}
