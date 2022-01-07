
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_put (struct sock*) ;
 int vcc_destroy_socket (struct sock*) ;

int vcc_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 if (sk) {
  lock_sock(sk);
  vcc_destroy_socket(sock->sk);
  release_sock(sk);
  sock_put(sk);
 }

 return 0;
}
