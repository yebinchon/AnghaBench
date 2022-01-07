
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ X25_STATE_3 ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int x25_do_timer_expiry (struct sock*) ;
 TYPE_1__* x25_sk (struct sock*) ;
 int x25_start_t2timer (struct sock*) ;

__attribute__((used)) static void x25_timer_expiry(unsigned long param)
{
 struct sock *sk = (struct sock *)param;

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk)) {
  if (x25_sk(sk)->state == X25_STATE_3)
   x25_start_t2timer(sk);
 } else
  x25_do_timer_expiry(sk);
 bh_unlock_sock(sk);
}
