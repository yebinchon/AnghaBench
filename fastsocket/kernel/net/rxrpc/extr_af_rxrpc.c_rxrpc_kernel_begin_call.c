
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int sk; } ;
struct sockaddr_rxrpc {int srx_service; } ;
struct sockaddr {int dummy; } ;
struct rxrpc_transport {int usage; } ;
struct rxrpc_sock {int sk; struct key* key; int service_id; struct rxrpc_transport* trans; } ;
struct rxrpc_conn_bundle {int usage; } ;
struct rxrpc_call {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct key {TYPE_1__ payload; } ;
typedef int gfp_t ;
typedef int __be16 ;


 int ENOTCONN ;
 struct rxrpc_call* ERR_CAST (struct rxrpc_transport*) ;
 struct rxrpc_call* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct rxrpc_transport*) ;
 int _enter (char*,int ,unsigned long) ;
 int _leave (char*,struct rxrpc_call*) ;
 int atomic_inc (int *) ;
 int htons (int ) ;
 int key_serial (struct key*) ;
 int lock_sock (int *) ;
 int release_sock (int *) ;
 struct rxrpc_transport* rxrpc_get_bundle (struct rxrpc_sock*,struct rxrpc_transport*,struct key*,int ,int ) ;
 struct rxrpc_call* rxrpc_get_client_call (struct rxrpc_sock*,struct rxrpc_transport*,struct rxrpc_transport*,unsigned long,int,int ) ;
 struct rxrpc_transport* rxrpc_name_to_transport (struct socket*,struct sockaddr*,int,int ,int ) ;
 int rxrpc_put_bundle (struct rxrpc_transport*,struct rxrpc_transport*) ;
 int rxrpc_put_transport (struct rxrpc_transport*) ;
 struct rxrpc_sock* rxrpc_sk (int ) ;

struct rxrpc_call *rxrpc_kernel_begin_call(struct socket *sock,
        struct sockaddr_rxrpc *srx,
        struct key *key,
        unsigned long user_call_ID,
        gfp_t gfp)
{
 struct rxrpc_conn_bundle *bundle;
 struct rxrpc_transport *trans;
 struct rxrpc_call *call;
 struct rxrpc_sock *rx = rxrpc_sk(sock->sk);
 __be16 service_id;

 _enter(",,%x,%lx", key_serial(key), user_call_ID);

 lock_sock(&rx->sk);

 if (srx) {
  trans = rxrpc_name_to_transport(sock, (struct sockaddr *) srx,
      sizeof(*srx), 0, gfp);
  if (IS_ERR(trans)) {
   call = ERR_CAST(trans);
   trans = ((void*)0);
   goto out_notrans;
  }
 } else {
  trans = rx->trans;
  if (!trans) {
   call = ERR_PTR(-ENOTCONN);
   goto out_notrans;
  }
  atomic_inc(&trans->usage);
 }

 service_id = rx->service_id;
 if (srx)
  service_id = htons(srx->srx_service);

 if (!key)
  key = rx->key;
 if (key && !key->payload.data)
  key = ((void*)0);

 bundle = rxrpc_get_bundle(rx, trans, key, service_id, gfp);
 if (IS_ERR(bundle)) {
  call = ERR_CAST(bundle);
  goto out;
 }

 call = rxrpc_get_client_call(rx, trans, bundle, user_call_ID, 1,
         gfp);
 rxrpc_put_bundle(trans, bundle);
out:
 rxrpc_put_transport(trans);
out_notrans:
 release_sock(&rx->sk);
 _leave(" = %p", call);
 return call;
}
