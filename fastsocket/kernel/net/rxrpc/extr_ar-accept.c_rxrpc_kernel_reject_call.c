
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;


 int _enter (char*) ;
 int _leave (char*,int) ;
 int rxrpc_reject_call (int ) ;
 int rxrpc_sk (int ) ;

int rxrpc_kernel_reject_call(struct socket *sock)
{
 int ret;

 _enter("");
 ret = rxrpc_reject_call(rxrpc_sk(sock->sk));
 _leave(" = %d", ret);
 return ret;
}
