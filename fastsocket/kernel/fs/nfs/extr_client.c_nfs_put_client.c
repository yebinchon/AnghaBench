
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_superblocks; int cl_share_link; int cl_count; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int atomic_read (int *) ;
 int dprintk (char*,int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int nfs_cb_idr_remove_locked (struct nfs_client*) ;
 int nfs_client_lock ;
 int nfs_free_client (struct nfs_client*) ;
 int spin_unlock (int *) ;

void nfs_put_client(struct nfs_client *clp)
{
 if (!clp)
  return;

 dprintk("--> nfs_put_client({%d})\n", atomic_read(&clp->cl_count));

 if (atomic_dec_and_lock(&clp->cl_count, &nfs_client_lock)) {
  list_del(&clp->cl_share_link);
  nfs_cb_idr_remove_locked(clp);
  spin_unlock(&nfs_client_lock);

  BUG_ON(!list_empty(&clp->cl_superblocks));

  nfs_free_client(clp);
 }
}
