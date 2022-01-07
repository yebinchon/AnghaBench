
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int dummy; } ;


 int mod_timer (struct timer_list*,unsigned long) ;
 int sock_hold (struct sock*) ;

void sk_reset_timer(struct sock *sk, struct timer_list* timer,
      unsigned long expires)
{
 if (!mod_timer(timer, expires))
  sock_hold(sk);
}
