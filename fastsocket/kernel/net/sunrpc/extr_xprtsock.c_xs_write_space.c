
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int flags; } ;
struct sock {struct socket* sk_socket; } ;
struct rpc_xprt {int dummy; } ;


 int SOCK_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 struct rpc_xprt* xprt_from_sock (struct sock*) ;
 int xprt_write_space (struct rpc_xprt*) ;

__attribute__((used)) static void xs_write_space(struct sock *sk)
{
 struct socket *sock;
 struct rpc_xprt *xprt;

 if (unlikely(!(sock = sk->sk_socket)))
  return;
 clear_bit(SOCK_NOSPACE, &sock->flags);

 if (unlikely(!(xprt = xprt_from_sock(sk))))
  return;
 if (test_and_clear_bit(SOCK_ASYNC_NOSPACE, &sock->flags) == 0)
  return;

 xprt_write_space(xprt);
}
