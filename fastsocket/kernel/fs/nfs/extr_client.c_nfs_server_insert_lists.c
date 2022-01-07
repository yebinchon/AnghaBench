
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int master_link; int client_link; struct nfs_client* nfs_client; } ;
struct nfs_client {int cl_res_state; int cl_superblocks; } ;


 int NFS_CS_STOP_RENEW ;
 int clear_bit (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 int nfs_client_lock ;
 int nfs_volume_list ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs_server_insert_lists(struct nfs_server *server)
{
 struct nfs_client *clp = server->nfs_client;

 spin_lock(&nfs_client_lock);
 list_add_tail_rcu(&server->client_link, &clp->cl_superblocks);
 list_add_tail(&server->master_link, &nfs_volume_list);
 clear_bit(NFS_CS_STOP_RENEW, &clp->cl_res_state);
 spin_unlock(&nfs_client_lock);

}
