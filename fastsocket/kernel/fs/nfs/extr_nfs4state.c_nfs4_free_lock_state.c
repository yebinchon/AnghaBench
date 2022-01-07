
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int lockowner_id; struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_lock; } ;
struct TYPE_2__ {int wait; } ;
struct nfs4_lock_state {TYPE_1__ ls_sequence; int ls_id; } ;


 int kfree (struct nfs4_lock_state*) ;
 int nfs_free_unique_id (int *,int *) ;
 int rpc_destroy_wait_queue (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs4_free_lock_state(struct nfs_server *server, struct nfs4_lock_state *lsp)
{
 struct nfs_client *clp = server->nfs_client;

 spin_lock(&clp->cl_lock);
 nfs_free_unique_id(&server->lockowner_id, &lsp->ls_id);
 spin_unlock(&clp->cl_lock);
 rpc_destroy_wait_queue(&lsp->ls_sequence.wait);
 kfree(lsp);
}
