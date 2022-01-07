
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {int sk; } ;
struct TYPE_8__ {scalar_t__ family; } ;
struct sockaddr_rxrpc {scalar_t__ transport_type; TYPE_4__ transport; } ;
struct sockaddr {int dummy; } ;
struct rxrpc_transport {int dummy; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_7__ {scalar_t__ transport_type; TYPE_2__ transport; } ;
struct TYPE_5__ {scalar_t__ sk_state; } ;
struct rxrpc_sock {int * local; TYPE_3__ srx; TYPE_1__ sk; } ;
struct rxrpc_peer {int dummy; } ;
typedef int gfp_t ;


 int ASSERT (int) ;
 int EAFNOSUPPORT ;
 struct rxrpc_transport* ERR_CAST (struct rxrpc_peer*) ;
 struct rxrpc_transport* ERR_PTR (int ) ;
 int ESOCKTNOSUPPORT ;
 scalar_t__ IS_ERR (struct rxrpc_peer*) ;
 scalar_t__ RXRPC_UNCONNECTED ;
 int _enter (char*,struct rxrpc_sock*,struct sockaddr*,int,int) ;
 int _leave (char*,struct rxrpc_transport*) ;
 struct rxrpc_peer* rxrpc_get_peer (struct sockaddr_rxrpc*,int ) ;
 struct rxrpc_transport* rxrpc_get_transport (int *,struct rxrpc_peer*,int ) ;
 int rxrpc_put_peer (struct rxrpc_peer*) ;
 struct rxrpc_sock* rxrpc_sk (int ) ;

__attribute__((used)) static struct rxrpc_transport *rxrpc_name_to_transport(struct socket *sock,
             struct sockaddr *addr,
             int addr_len, int flags,
             gfp_t gfp)
{
 struct sockaddr_rxrpc *srx = (struct sockaddr_rxrpc *) addr;
 struct rxrpc_transport *trans;
 struct rxrpc_sock *rx = rxrpc_sk(sock->sk);
 struct rxrpc_peer *peer;

 _enter("%p,%p,%d,%d", rx, addr, addr_len, flags);

 ASSERT(rx->local != ((void*)0));
 ASSERT(rx->sk.sk_state > RXRPC_UNCONNECTED);

 if (rx->srx.transport_type != srx->transport_type)
  return ERR_PTR(-ESOCKTNOSUPPORT);
 if (rx->srx.transport.family != srx->transport.family)
  return ERR_PTR(-EAFNOSUPPORT);


 peer = rxrpc_get_peer(srx, gfp);
 if (IS_ERR(peer))
  return ERR_CAST(peer);


 trans = rxrpc_get_transport(rx->local, peer, gfp);
 rxrpc_put_peer(peer);
 _leave(" = %p", trans);
 return trans;
}
