
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct TYPE_4__ {int * icsk_af_ops; } ;
struct TYPE_3__ {int (* hash ) (struct sock*) ;} ;


 scalar_t__ TCP_CLOSE ;
 int __inet6_hash (struct sock*) ;
 TYPE_2__* inet_csk (struct sock*) ;
 int ipv6_mapped ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int stub1 (struct sock*) ;
 TYPE_1__ tcp_prot ;

__attribute__((used)) static void tcp_v6_hash(struct sock *sk)
{
 if (sk->sk_state != TCP_CLOSE) {
  if (inet_csk(sk)->icsk_af_ops == &ipv6_mapped) {
   tcp_prot.hash(sk);
   return;
  }
  local_bh_disable();
  __inet6_hash(sk);
  local_bh_enable();
 }
}
