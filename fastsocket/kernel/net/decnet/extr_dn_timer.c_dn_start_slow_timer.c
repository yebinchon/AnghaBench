
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; } ;


 scalar_t__ SLOW_INTERVAL ;
 int add_timer (TYPE_1__*) ;
 int dn_slow_timer ;
 scalar_t__ jiffies ;

void dn_start_slow_timer(struct sock *sk)
{
 sk->sk_timer.expires = jiffies + SLOW_INTERVAL;
 sk->sk_timer.function = dn_slow_timer;
 sk->sk_timer.data = (unsigned long)sk;

 add_timer(&sk->sk_timer);
}
