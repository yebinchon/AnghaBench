
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rxrpc_transport {int dummy; } ;
struct rxrpc_sock {int sk; } ;
struct rxrpc_conn_bundle {int dummy; } ;
struct TYPE_8__ {scalar_t__ expires; } ;
struct rxrpc_call {int rx_data_post; TYPE_4__ lifetimer; TYPE_3__* conn; int error_link; struct rxrpc_sock* socket; } ;
typedef int gfp_t ;
struct TYPE_7__ {TYPE_2__* trans; } ;
struct TYPE_6__ {TYPE_1__* peer; } ;
struct TYPE_5__ {int lock; int error_targets; } ;


 int ASSERT (int ) ;
 int ENOMEM ;
 struct rxrpc_call* ERR_PTR (int) ;
 int HZ ;
 int _enter (char*) ;
 int _leave (char*,struct rxrpc_call*) ;
 int add_timer (TYPE_4__*) ;
 scalar_t__ jiffies ;
 int kmem_cache_free (int ,struct rxrpc_call*) ;
 int list_add (int *,int *) ;
 struct rxrpc_call* rxrpc_alloc_call (int ) ;
 int rxrpc_call_jar ;
 int rxrpc_call_max_lifetime ;
 int rxrpc_connect_call (struct rxrpc_sock*,struct rxrpc_transport*,struct rxrpc_conn_bundle*,struct rxrpc_call*,int ) ;
 int sock_hold (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct rxrpc_call *rxrpc_alloc_client_call(
 struct rxrpc_sock *rx,
 struct rxrpc_transport *trans,
 struct rxrpc_conn_bundle *bundle,
 gfp_t gfp)
{
 struct rxrpc_call *call;
 int ret;

 _enter("");

 ASSERT(rx != ((void*)0));
 ASSERT(trans != ((void*)0));
 ASSERT(bundle != ((void*)0));

 call = rxrpc_alloc_call(gfp);
 if (!call)
  return ERR_PTR(-ENOMEM);

 sock_hold(&rx->sk);
 call->socket = rx;
 call->rx_data_post = 1;

 ret = rxrpc_connect_call(rx, trans, bundle, call, gfp);
 if (ret < 0) {
  kmem_cache_free(rxrpc_call_jar, call);
  return ERR_PTR(ret);
 }

 spin_lock(&call->conn->trans->peer->lock);
 list_add(&call->error_link, &call->conn->trans->peer->error_targets);
 spin_unlock(&call->conn->trans->peer->lock);

 call->lifetimer.expires = jiffies + rxrpc_call_max_lifetime * HZ;
 add_timer(&call->lifetimer);

 _leave(" = %p", call);
 return call;
}
