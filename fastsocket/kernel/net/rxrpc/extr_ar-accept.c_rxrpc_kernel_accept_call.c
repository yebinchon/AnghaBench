
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct rxrpc_call {int dummy; } ;


 int _enter (char*,unsigned long) ;
 int _leave (char*,struct rxrpc_call*) ;
 struct rxrpc_call* rxrpc_accept_call (int ,unsigned long) ;
 int rxrpc_sk (int ) ;

struct rxrpc_call *rxrpc_kernel_accept_call(struct socket *sock,
         unsigned long user_call_ID)
{
 struct rxrpc_call *call;

 _enter(",%lx", user_call_ID);
 call = rxrpc_accept_call(rxrpc_sk(sock->sk), user_call_ID);
 _leave(" = %p", call);
 return call;
}
