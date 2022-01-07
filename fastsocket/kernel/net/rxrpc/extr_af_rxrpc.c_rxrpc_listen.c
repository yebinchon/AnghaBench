
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_max_ack_backlog; } ;
struct TYPE_3__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; int * local; } ;


 int ASSERT (int ) ;
 int EADDRNOTAVAIL ;
 int EBUSY ;



 int RXRPC_SERVER_LISTENING ;

 int _enter (char*,struct rxrpc_sock*,int) ;
 int _leave (char*,int) ;
 int lock_sock (TYPE_1__*) ;
 int release_sock (TYPE_1__*) ;
 struct rxrpc_sock* rxrpc_sk (struct sock*) ;

__attribute__((used)) static int rxrpc_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 struct rxrpc_sock *rx = rxrpc_sk(sk);
 int ret;

 _enter("%p,%d", rx, backlog);

 lock_sock(&rx->sk);

 switch (rx->sk.sk_state) {
 case 128:
  ret = -EADDRNOTAVAIL;
  break;
 case 131:
 case 130:
 default:
  ret = -EBUSY;
  break;
 case 129:
  ASSERT(rx->local != ((void*)0));
  sk->sk_max_ack_backlog = backlog;
  rx->sk.sk_state = RXRPC_SERVER_LISTENING;
  ret = 0;
  break;
 }

 release_sock(&rx->sk);
 _leave(" = %d", ret);
 return ret;
}
