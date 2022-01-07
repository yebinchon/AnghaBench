
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __x25_destroy_socket (struct sock*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

void x25_destroy_socket_from_timer(struct sock *sk)
{
 sock_hold(sk);
 bh_lock_sock(sk);
 __x25_destroy_socket(sk);
 bh_unlock_sock(sk);
 sock_put(sk);
}
