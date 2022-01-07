
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int backing_dev_info; int io_stats; int nfs_client; int client; int client_acl; int (* destroy ) (struct nfs_server*) ;} ;


 int IS_ERR (int ) ;
 int bdi_destroy (int *) ;
 int dprintk (char*) ;
 int kfree (struct nfs_server*) ;
 int nfs_free_iostats (int ) ;
 int nfs_put_client (int ) ;
 int nfs_release_automount_timer () ;
 int nfs_server_remove_lists (struct nfs_server*) ;
 int rpc_shutdown_client (int ) ;
 int stub1 (struct nfs_server*) ;
 int unset_pnfs_layoutdriver (struct nfs_server*) ;

void nfs_free_server(struct nfs_server *server)
{
 dprintk("--> nfs_free_server()\n");

 nfs_server_remove_lists(server);
 unset_pnfs_layoutdriver(server);

 if (server->destroy != ((void*)0))
  server->destroy(server);

 if (!IS_ERR(server->client_acl))
  rpc_shutdown_client(server->client_acl);
 if (!IS_ERR(server->client))
  rpc_shutdown_client(server->client);

 nfs_put_client(server->nfs_client);

 nfs_free_iostats(server->io_stats);
 bdi_destroy(&server->backing_dev_info);
 kfree(server);
 nfs_release_automount_timer();
 dprintk("<-- nfs_free_server()\n");
}
