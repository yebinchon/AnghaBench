
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {scalar_t__ type; int ops; int state; } ;
struct sock {int sk_protocol; TYPE_1__* sk_prot; int sk_backlog_rcv; } ;
struct pn_sock {scalar_t__ resource; scalar_t__ sobject; } ;
struct phonet_protocol {scalar_t__ sock_type; int ops; int prot; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int (* init ) (struct sock*) ;int backlog_rcv; } ;


 int CAP_SYS_ADMIN ;
 int ENOMEM ;
 int EPERM ;
 int EPROTONOSUPPORT ;
 int GFP_KERNEL ;
 int PF_PHONET ;
 int PN_PROTO_PHONET ;
 int PN_PROTO_PIPE ;


 int SS_UNCONNECTED ;
 int capable (int ) ;
 struct phonet_protocol* phonet_proto_get (int) ;
 int phonet_proto_put (struct phonet_protocol*) ;
 struct pn_sock* pn_sk (struct sock*) ;
 scalar_t__ request_module (char*,int ,int) ;
 struct sock* sk_alloc (struct net*,int ,int ,int ) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static int pn_socket_create(struct net *net, struct socket *sock, int protocol,
       int kern)
{
 struct sock *sk;
 struct pn_sock *pn;
 struct phonet_protocol *pnp;
 int err;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (protocol == 0) {

  switch (sock->type) {
  case 129:
   protocol = PN_PROTO_PHONET;
   break;
  case 128:
   protocol = PN_PROTO_PIPE;
   break;
  default:
   return -EPROTONOSUPPORT;
  }
 }

 pnp = phonet_proto_get(protocol);
 if (pnp == ((void*)0) &&
     request_module("net-pf-%d-proto-%d", PF_PHONET, protocol) == 0)
  pnp = phonet_proto_get(protocol);

 if (pnp == ((void*)0))
  return -EPROTONOSUPPORT;
 if (sock->type != pnp->sock_type) {
  err = -EPROTONOSUPPORT;
  goto out;
 }

 sk = sk_alloc(net, PF_PHONET, GFP_KERNEL, pnp->prot);
 if (sk == ((void*)0)) {
  err = -ENOMEM;
  goto out;
 }

 sock_init_data(sock, sk);
 sock->state = SS_UNCONNECTED;
 sock->ops = pnp->ops;
 sk->sk_backlog_rcv = sk->sk_prot->backlog_rcv;
 sk->sk_protocol = protocol;
 pn = pn_sk(sk);
 pn->sobject = 0;
 pn->resource = 0;
 sk->sk_prot->init(sk);
 err = 0;

out:
 phonet_proto_put(pnp);
 return err;
}
