
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_rxrpc {int dummy; } ;
struct rxrpc_local {int srx; int debug_id; int usage; int services_lock; int lock; int reject_queue; int accept_queue; int defrag_sem; int link; int services; int rejecter; int acceptor; int destroyer; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int *) ;
 int _leave (char*,struct rxrpc_local*) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 int init_rwsem (int *) ;
 struct rxrpc_local* kzalloc (int,int ) ;
 int memcpy (int *,struct sockaddr_rxrpc*,int) ;
 int rwlock_init (int *) ;
 int rxrpc_accept_incoming_calls ;
 int rxrpc_debug_id ;
 int rxrpc_destroy_local ;
 int rxrpc_reject_packets ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static
struct rxrpc_local *rxrpc_alloc_local(struct sockaddr_rxrpc *srx)
{
 struct rxrpc_local *local;

 local = kzalloc(sizeof(struct rxrpc_local), GFP_KERNEL);
 if (local) {
  INIT_WORK(&local->destroyer, &rxrpc_destroy_local);
  INIT_WORK(&local->acceptor, &rxrpc_accept_incoming_calls);
  INIT_WORK(&local->rejecter, &rxrpc_reject_packets);
  INIT_LIST_HEAD(&local->services);
  INIT_LIST_HEAD(&local->link);
  init_rwsem(&local->defrag_sem);
  skb_queue_head_init(&local->accept_queue);
  skb_queue_head_init(&local->reject_queue);
  spin_lock_init(&local->lock);
  rwlock_init(&local->services_lock);
  atomic_set(&local->usage, 1);
  local->debug_id = atomic_inc_return(&rxrpc_debug_id);
  memcpy(&local->srx, srx, sizeof(*srx));
 }

 _leave(" = %p", local);
 return local;
}
