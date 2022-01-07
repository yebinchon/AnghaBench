
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_timer; } ;


 int sk_stop_timer (struct sock*,int *) ;

__attribute__((used)) static void iucv_sock_clear_timer(struct sock *sk)
{
 sk_stop_timer(sk, &sk->sk_timer);
}
