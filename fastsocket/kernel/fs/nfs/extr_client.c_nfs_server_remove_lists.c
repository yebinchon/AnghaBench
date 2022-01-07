
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int master_link; int client_link; struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_res_state; int cl_superblocks; } ;


 int NFS_CS_STOP_RENEW ;
 int list_del (int *) ;
 int list_del_rcu (int *) ;
 scalar_t__ list_empty (int *) ;
 int nfs_client_lock ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void nfs_server_remove_lists(struct nfs_server *server)
{
 struct nfs_client *clp = server->nfs_client;

 spin_lock(&nfs_client_lock);
 list_del_rcu(&server->client_link);
 if (clp && list_empty(&clp->cl_superblocks))
  set_bit(NFS_CS_STOP_RENEW, &clp->cl_res_state);
 list_del(&server->master_link);
 spin_unlock(&nfs_client_lock);

 synchronize_rcu();
}
