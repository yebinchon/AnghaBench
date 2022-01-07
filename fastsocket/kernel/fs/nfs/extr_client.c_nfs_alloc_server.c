
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int io_stats; int backing_dev_info; int active; int state_owners_lru; int layouts; int delegations; int master_link; int client_link; int client_acl; int client; } ;


 int EINVAL ;
 int ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ bdi_init (int *) ;
 int kfree (struct nfs_server*) ;
 struct nfs_server* kzalloc (int,int ) ;
 int nfs_alloc_iostats () ;
 int nfs_free_iostats (int ) ;
 int pnfs_init_server (struct nfs_server*) ;

__attribute__((used)) static struct nfs_server *nfs_alloc_server(void)
{
 struct nfs_server *server;

 server = kzalloc(sizeof(struct nfs_server), GFP_KERNEL);
 if (!server)
  return ((void*)0);

 server->client = server->client_acl = ERR_PTR(-EINVAL);


 INIT_LIST_HEAD(&server->client_link);
 INIT_LIST_HEAD(&server->master_link);
 INIT_LIST_HEAD(&server->delegations);
 INIT_LIST_HEAD(&server->layouts);
 INIT_LIST_HEAD(&server->state_owners_lru);

 atomic_set(&server->active, 0);

 server->io_stats = nfs_alloc_iostats();
 if (!server->io_stats) {
  kfree(server);
  return ((void*)0);
 }

 if (bdi_init(&server->backing_dev_info)) {
  nfs_free_iostats(server->io_stats);
  kfree(server);
  return ((void*)0);
 }

 pnfs_init_server(server);

 return server;
}
