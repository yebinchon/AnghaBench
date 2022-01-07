
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int * sk_socket; } ;


 int get_net (int *) ;
 int init_net ;
 int release_net (int ) ;
 int sock_hold (struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_net_set (struct sock*,int ) ;
 int sock_put (struct sock*) ;
 int sock_release (int *) ;

void sk_release_kernel(struct sock *sk)
{
 if (sk == ((void*)0) || sk->sk_socket == ((void*)0))
  return;

 sock_hold(sk);
 sock_release(sk->sk_socket);
 release_net(sock_net(sk));
 sock_net_set(sk, get_net(&init_net));
 sock_put(sk);
}
