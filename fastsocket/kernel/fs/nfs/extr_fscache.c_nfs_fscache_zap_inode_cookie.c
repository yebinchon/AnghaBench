
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int * fscache; } ;
struct inode {int dummy; } ;


 int FSCACHE ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int dfprintk (int ,char*,struct nfs_inode*,int *) ;
 int fscache_relinquish_cookie (int *,int) ;

void nfs_fscache_zap_inode_cookie(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);

 dfprintk(FSCACHE, "NFS: zapping cookie (0x%p/0x%p)\n",
   nfsi, nfsi->fscache);

 fscache_relinquish_cookie(nfsi->fscache, 1);
 nfsi->fscache = ((void*)0);
}
