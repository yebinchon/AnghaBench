
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int state_owners_lru; struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_lock; } ;
struct nfs4_state_owner {int so_lru; int so_expires; int so_server_node; int so_count; struct nfs_server* so_server; } ;


 int RB_EMPTY_NODE (int *) ;
 int atomic_dec_and_lock (int *,int *) ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int nfs4_free_state_owner (struct nfs4_state_owner*) ;
 int nfs4_remove_state_owner_locked (struct nfs4_state_owner*) ;
 int spin_unlock (int *) ;

void nfs4_put_state_owner(struct nfs4_state_owner *sp)
{
 struct nfs_server *server = sp->so_server;
 struct nfs_client *clp = server->nfs_client;

 if (!atomic_dec_and_lock(&sp->so_count, &clp->cl_lock))
  return;

 if (!RB_EMPTY_NODE(&sp->so_server_node)) {
  sp->so_expires = jiffies;
  list_add_tail(&sp->so_lru, &server->state_owners_lru);
  spin_unlock(&clp->cl_lock);
 } else {
  nfs4_remove_state_owner_locked(sp);
  spin_unlock(&clp->cl_lock);
  nfs4_free_state_owner(sp);
 }
}
