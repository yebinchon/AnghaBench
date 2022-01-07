
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int flags; } ;
struct sock {struct socket* sk_socket; } ;


 int SOCK_NOSPACE ;
 int clear_bit (int ,int *) ;
 scalar_t__ sk_stream_min_wspace (struct sock*) ;
 scalar_t__ sk_stream_wspace (struct sock*) ;
 int svc_write_space (struct sock*) ;

__attribute__((used)) static void svc_tcp_write_space(struct sock *sk)
{
 struct socket *sock = sk->sk_socket;

 if (sk_stream_wspace(sk) >= sk_stream_min_wspace(sk) && sock)
  clear_bit(SOCK_NOSPACE, &sock->flags);
 svc_write_space(sk);
}
