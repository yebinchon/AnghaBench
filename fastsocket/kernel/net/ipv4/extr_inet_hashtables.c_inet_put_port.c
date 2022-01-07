
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __inet_put_port (struct sock*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

void inet_put_port(struct sock *sk)
{
 local_bh_disable();
 __inet_put_port(sk);
 local_bh_enable();
}
