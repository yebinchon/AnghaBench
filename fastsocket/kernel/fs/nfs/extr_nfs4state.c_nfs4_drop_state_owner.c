
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int state_owners; struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_lock; } ;
struct nfs4_state_owner {int so_server_node; struct nfs_server* so_server; } ;


 int RB_CLEAR_NODE (int *) ;
 int RB_EMPTY_NODE (int *) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfs4_drop_state_owner(struct nfs4_state_owner *sp)
{
 if (!RB_EMPTY_NODE(&sp->so_server_node)) {
  struct nfs_server *server = sp->so_server;
  struct nfs_client *clp = server->nfs_client;

  spin_lock(&clp->cl_lock);
  rb_erase(&sp->so_server_node, &server->state_owners);
  RB_CLEAR_NODE(&sp->so_server_node);
  spin_unlock(&clp->cl_lock);
 }
}
