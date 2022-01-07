
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct TYPE_2__ {int * icsk_af_ops; } ;


 scalar_t__ DCCP_CLOSED ;
 int __inet6_hash (struct sock*) ;
 int dccp_ipv6_mapped ;
 TYPE_1__* inet_csk (struct sock*) ;
 int inet_hash (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

__attribute__((used)) static void dccp_v6_hash(struct sock *sk)
{
 if (sk->sk_state != DCCP_CLOSED) {
  if (inet_csk(sk)->icsk_af_ops == &dccp_ipv6_mapped) {
   inet_hash(sk);
   return;
  }
  local_bh_disable();
  __inet6_hash(sk);
  local_bh_enable();
 }
}
