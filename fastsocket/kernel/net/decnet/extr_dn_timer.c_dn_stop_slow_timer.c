
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_timer; } ;


 int del_timer (int *) ;

void dn_stop_slow_timer(struct sock *sk)
{
 del_timer(&sk->sk_timer);
}
