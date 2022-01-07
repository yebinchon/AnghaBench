
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; } ;


 scalar_t__ SOCK_DESTROY_TIME ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 scalar_t__ sk_has_allocations (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void atalk_destroy_timer(unsigned long data)
{
 struct sock *sk = (struct sock *)data;

 if (sk_has_allocations(sk)) {
  sk->sk_timer.expires = jiffies + SOCK_DESTROY_TIME;
  add_timer(&sk->sk_timer);
 } else
  sock_put(sk);
}
