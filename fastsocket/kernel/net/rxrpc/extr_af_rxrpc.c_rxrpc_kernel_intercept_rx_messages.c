
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct rxrpc_sock {int interceptor; } ;
typedef int rxrpc_interceptor_t ;


 int _enter (char*) ;
 struct rxrpc_sock* rxrpc_sk (int ) ;

void rxrpc_kernel_intercept_rx_messages(struct socket *sock,
     rxrpc_interceptor_t interceptor)
{
 struct rxrpc_sock *rx = rxrpc_sk(sock->sk);

 _enter("");
 rx->interceptor = interceptor;
}
