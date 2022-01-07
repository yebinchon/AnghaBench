
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_transport {int peer; int local; int error_queue; int debug_id; } ;


 int _net (char*,int ) ;
 int kfree (struct rxrpc_transport*) ;
 int rxrpc_purge_queue (int *) ;
 int rxrpc_put_local (int ) ;
 int rxrpc_put_peer (int ) ;

__attribute__((used)) static void rxrpc_cleanup_transport(struct rxrpc_transport *trans)
{
 _net("DESTROY TRANS %d", trans->debug_id);

 rxrpc_purge_queue(&trans->error_queue);

 rxrpc_put_local(trans->local);
 rxrpc_put_peer(trans->peer);
 kfree(trans);
}
