
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long expires; } ;
struct x25_sock {TYPE_1__ timer; } ;
struct sock {int dummy; } ;


 unsigned long jiffies ;
 int timer_pending (TYPE_1__*) ;
 struct x25_sock* x25_sk (struct sock*) ;

unsigned long x25_display_timer(struct sock *sk)
{
 struct x25_sock *x25 = x25_sk(sk);

 if (!timer_pending(&x25->timer))
  return 0;

 return x25->timer.expires - jiffies;
}
