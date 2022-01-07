
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {struct nfs4_cached_acl* nfs4_acl; } ;
struct nfs4_cached_acl {int dummy; } ;
struct inode {int i_lock; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int kfree (struct nfs4_cached_acl*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs4_set_cached_acl(struct inode *inode, struct nfs4_cached_acl *acl)
{
 struct nfs_inode *nfsi = NFS_I(inode);

 spin_lock(&inode->i_lock);
 kfree(nfsi->nfs4_acl);
 nfsi->nfs4_acl = acl;
 spin_unlock(&inode->i_lock);
}
