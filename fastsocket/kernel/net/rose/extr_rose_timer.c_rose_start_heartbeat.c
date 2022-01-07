
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; scalar_t__ expires; int * function; } ;
struct sock {TYPE_1__ sk_timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int rose_heartbeat_expiry ;

void rose_start_heartbeat(struct sock *sk)
{
 del_timer(&sk->sk_timer);

 sk->sk_timer.data = (unsigned long)sk;
 sk->sk_timer.function = &rose_heartbeat_expiry;
 sk->sk_timer.expires = jiffies + 5 * HZ;

 add_timer(&sk->sk_timer);
}
