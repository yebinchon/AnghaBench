
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_header {int dummy; } ;
struct rxrpc_connection {int size_align; int header_size; int debug_id; int avail_calls; int usage; int state_lock; int lock; int rx_queue; int calls; int bundle_link; int processor; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int *) ;
 int RB_ROOT ;
 int RXRPC_MAXCALLS ;
 int _enter (char*) ;
 int _leave (char*,struct rxrpc_connection*,int ) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 struct rxrpc_connection* kzalloc (int,int ) ;
 int rwlock_init (int *) ;
 int rxrpc_debug_id ;
 int rxrpc_process_connection ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct rxrpc_connection *rxrpc_alloc_connection(gfp_t gfp)
{
 struct rxrpc_connection *conn;

 _enter("");

 conn = kzalloc(sizeof(struct rxrpc_connection), gfp);
 if (conn) {
  INIT_WORK(&conn->processor, &rxrpc_process_connection);
  INIT_LIST_HEAD(&conn->bundle_link);
  conn->calls = RB_ROOT;
  skb_queue_head_init(&conn->rx_queue);
  rwlock_init(&conn->lock);
  spin_lock_init(&conn->state_lock);
  atomic_set(&conn->usage, 1);
  conn->debug_id = atomic_inc_return(&rxrpc_debug_id);
  conn->avail_calls = RXRPC_MAXCALLS;
  conn->size_align = 4;
  conn->header_size = sizeof(struct rxrpc_header);
 }

 _leave(" = %p{%d}", conn, conn ? conn->debug_id : 0);
 return conn;
}
