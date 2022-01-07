
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rxrpc_transport {int error_handler; int debug_id; int usage; int conn_lock; int client_lock; int error_queue; void* server_conns; void* client_conns; void* bundles; int link; struct rxrpc_peer* peer; struct rxrpc_local* local; } ;
struct TYPE_3__ {scalar_t__ family; } ;
struct TYPE_4__ {int transport_type; TYPE_1__ transport; } ;
struct rxrpc_peer {TYPE_2__ srx; } ;
struct rxrpc_local {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ AF_INET ;
 int BUG () ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 void* RB_ROOT ;

 int _enter (char*) ;
 int _leave (char*,struct rxrpc_transport*) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 struct rxrpc_transport* kzalloc (int,int ) ;
 int rwlock_init (int *) ;
 int rxrpc_UDP_error_handler ;
 int rxrpc_debug_id ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct rxrpc_transport *rxrpc_alloc_transport(struct rxrpc_local *local,
           struct rxrpc_peer *peer,
           gfp_t gfp)
{
 struct rxrpc_transport *trans;

 _enter("");

 trans = kzalloc(sizeof(struct rxrpc_transport), gfp);
 if (trans) {
  trans->local = local;
  trans->peer = peer;
  INIT_LIST_HEAD(&trans->link);
  trans->bundles = RB_ROOT;
  trans->client_conns = RB_ROOT;
  trans->server_conns = RB_ROOT;
  skb_queue_head_init(&trans->error_queue);
  spin_lock_init(&trans->client_lock);
  rwlock_init(&trans->conn_lock);
  atomic_set(&trans->usage, 1);
  trans->debug_id = atomic_inc_return(&rxrpc_debug_id);

  if (peer->srx.transport.family == AF_INET) {
   switch (peer->srx.transport_type) {
   case 128:
    INIT_WORK(&trans->error_handler,
       rxrpc_UDP_error_handler);
    break;
   default:
    BUG();
    break;
   }
  } else {
   BUG();
  }
 }

 _leave(" = %p", trans);
 return trans;
}
