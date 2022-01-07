
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int state; int * ops; } ;
struct sock {int sk_destruct; int sk_max_ack_backlog; int sk_write_space; int sk_state; } ;
struct rxrpc_sock {int proto; int srx; int call_lock; int acceptq; int secureq; int listen_link; int calls; } ;
struct net {int dummy; } ;


 int EAFNOSUPPORT ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PF_INET ;
 int PF_RXRPC ;
 int RB_ROOT ;
 int RXRPC_UNCONNECTED ;
 scalar_t__ SOCK_DGRAM ;
 int SS_UNCONNECTED ;
 int _enter (char*,struct socket*,int) ;
 int _leave (char*,struct rxrpc_sock*) ;
 struct net init_net ;
 int memset (int *,int ,int) ;
 int rwlock_init (int *) ;
 int rxrpc_proto ;
 int rxrpc_rpc_ops ;
 struct rxrpc_sock* rxrpc_sk (struct sock*) ;
 int rxrpc_sock_destructor ;
 int rxrpc_write_space ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sysctl_rxrpc_max_qlen ;

__attribute__((used)) static int rxrpc_create(struct net *net, struct socket *sock, int protocol,
   int kern)
{
 struct rxrpc_sock *rx;
 struct sock *sk;

 _enter("%p,%d", sock, protocol);

 if (net != &init_net)
  return -EAFNOSUPPORT;


 if (protocol != PF_INET)
  return -EPROTONOSUPPORT;

 if (sock->type != SOCK_DGRAM)
  return -ESOCKTNOSUPPORT;

 sock->ops = &rxrpc_rpc_ops;
 sock->state = SS_UNCONNECTED;

 sk = sk_alloc(net, PF_RXRPC, GFP_KERNEL, &rxrpc_proto);
 if (!sk)
  return -ENOMEM;

 sock_init_data(sock, sk);
 sk->sk_state = RXRPC_UNCONNECTED;
 sk->sk_write_space = rxrpc_write_space;
 sk->sk_max_ack_backlog = sysctl_rxrpc_max_qlen;
 sk->sk_destruct = rxrpc_sock_destructor;

 rx = rxrpc_sk(sk);
 rx->proto = protocol;
 rx->calls = RB_ROOT;

 INIT_LIST_HEAD(&rx->listen_link);
 INIT_LIST_HEAD(&rx->secureq);
 INIT_LIST_HEAD(&rx->acceptq);
 rwlock_init(&rx->call_lock);
 memset(&rx->srx, 0, sizeof(rx->srx));

 _leave(" = 0 [%p]", rx);
 return 0;
}
