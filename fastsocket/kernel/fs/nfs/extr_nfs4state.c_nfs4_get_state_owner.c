
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_lock; } ;
struct TYPE_2__ {int wait; } ;
struct nfs4_state_owner {TYPE_1__ so_sequence; struct rpc_cred* so_cred; struct nfs_server* so_server; } ;


 int get_rpccred (struct rpc_cred*) ;
 int kfree (struct nfs4_state_owner*) ;
 struct nfs4_state_owner* nfs4_alloc_state_owner () ;
 struct nfs4_state_owner* nfs4_find_state_owner_locked (struct nfs_server*,struct rpc_cred*) ;
 int nfs4_gc_state_owners (struct nfs_server*) ;
 struct nfs4_state_owner* nfs4_insert_state_owner_locked (struct nfs4_state_owner*) ;
 int rpc_destroy_wait_queue (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct nfs4_state_owner *nfs4_get_state_owner(struct nfs_server *server,
           struct rpc_cred *cred)
{
 struct nfs_client *clp = server->nfs_client;
 struct nfs4_state_owner *sp, *new;

 spin_lock(&clp->cl_lock);
 sp = nfs4_find_state_owner_locked(server, cred);
 spin_unlock(&clp->cl_lock);
 if (sp != ((void*)0))
  goto out;
 new = nfs4_alloc_state_owner();
 if (new == ((void*)0))
  goto out;
 new->so_server = server;
 new->so_cred = cred;
 spin_lock(&clp->cl_lock);
 sp = nfs4_insert_state_owner_locked(new);
 spin_unlock(&clp->cl_lock);
 if (sp == new)
  get_rpccred(cred);
 else {
  rpc_destroy_wait_queue(&new->so_sequence.wait);
  kfree(new);
 }
out:
 nfs4_gc_state_owners(server);
 return sp;
}
