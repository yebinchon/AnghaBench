
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* nfs_client; } ;
struct nfs_inode {struct fscache_cookie* fscache; } ;
struct inode {int dummy; } ;
struct fscache_cookie {int dummy; } ;
struct TYPE_2__ {int fscache; } ;


 int FSCACHE ;
 struct nfs_inode* NFS_I (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int dfprintk (int ,char*,struct nfs_server*,struct nfs_inode*,struct fscache_cookie*,struct fscache_cookie*) ;
 struct fscache_cookie* fscache_acquire_cookie (int ,int *,struct nfs_inode*) ;
 int fscache_relinquish_cookie (struct fscache_cookie*,int) ;
 int nfs_fscache_inode_lock (struct inode*) ;
 int nfs_fscache_inode_object_def ;
 int nfs_fscache_inode_unlock (struct inode*) ;

void nfs_fscache_reset_inode_cookie(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 struct nfs_server *nfss = NFS_SERVER(inode);
 struct fscache_cookie *old = nfsi->fscache;

 nfs_fscache_inode_lock(inode);
 if (nfsi->fscache) {

  fscache_relinquish_cookie(nfsi->fscache, 1);

  nfsi->fscache = fscache_acquire_cookie(
   nfss->nfs_client->fscache,
   &nfs_fscache_inode_object_def,
   nfsi);

  dfprintk(FSCACHE,
    "NFS: revalidation new cookie (0x%p/0x%p/0x%p/0x%p)\n",
    nfss, nfsi, old, nfsi->fscache);
 }
 nfs_fscache_inode_unlock(inode);
}
