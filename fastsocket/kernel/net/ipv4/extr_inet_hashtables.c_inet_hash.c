
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;


 scalar_t__ TCP_CLOSE ;
 int __inet_hash (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

void inet_hash(struct sock *sk)
{
 if (sk->sk_state != TCP_CLOSE) {
  local_bh_disable();
  __inet_hash(sk);
  local_bh_enable();
 }
}
