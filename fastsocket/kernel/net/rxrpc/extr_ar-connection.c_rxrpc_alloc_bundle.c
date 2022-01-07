
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_conn_bundle {int usage; int chanwait; int busy_conns; int avail_conns; int unused_conns; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int _enter (char*) ;
 int _leave (char*,struct rxrpc_conn_bundle*) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 struct rxrpc_conn_bundle* kzalloc (int,int ) ;

__attribute__((used)) static struct rxrpc_conn_bundle *rxrpc_alloc_bundle(gfp_t gfp)
{
 struct rxrpc_conn_bundle *bundle;

 _enter("");

 bundle = kzalloc(sizeof(struct rxrpc_conn_bundle), gfp);
 if (bundle) {
  INIT_LIST_HEAD(&bundle->unused_conns);
  INIT_LIST_HEAD(&bundle->avail_conns);
  INIT_LIST_HEAD(&bundle->busy_conns);
  init_waitqueue_head(&bundle->chanwait);
  atomic_set(&bundle->usage, 1);
 }

 _leave(" = %p", bundle);
 return bundle;
}
