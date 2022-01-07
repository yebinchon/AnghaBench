
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int openowner_id; int state_owners; } ;
struct nfs4_state_owner {int so_owner_id; int so_server_node; struct nfs_server* so_server; } ;


 int RB_EMPTY_NODE (int *) ;
 int nfs_free_unique_id (int *,int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void
nfs4_remove_state_owner_locked(struct nfs4_state_owner *sp)
{
 struct nfs_server *server = sp->so_server;

 if (!RB_EMPTY_NODE(&sp->so_server_node))
  rb_erase(&sp->so_server_node, &server->state_owners);
 nfs_free_unique_id(&server->openowner_id, &sp->so_owner_id);
}
