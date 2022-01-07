
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __x25_destroy_socket (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void x25_destroy_socket(struct sock *sk)
{
 sock_hold(sk);
 lock_sock(sk);
 __x25_destroy_socket(sk);
 release_sock(sk);
 sock_put(sk);
}
