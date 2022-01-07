
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x25_sock {int timer; } ;
struct TYPE_2__ {unsigned long data; int * function; } ;
struct sock {TYPE_1__ sk_timer; } ;


 int setup_timer (int *,int ,unsigned long) ;
 int x25_heartbeat_expiry ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_timer_expiry ;

void x25_init_timers(struct sock *sk)
{
 struct x25_sock *x25 = x25_sk(sk);

 setup_timer(&x25->timer, x25_timer_expiry, (unsigned long)sk);


 sk->sk_timer.data = (unsigned long)sk;
 sk->sk_timer.function = &x25_heartbeat_expiry;
}
