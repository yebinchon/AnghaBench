
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl {int dummy; } ;
struct nfs_inode {void* acl_default; void* acl_access; } ;
struct inode {int i_lock; int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_id; } ;


 int IS_ERR (struct posix_acl*) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int __nfs3_forget_cached_acls (struct nfs_inode*) ;
 int dprintk (char*,int ,int ,struct posix_acl*,struct posix_acl*) ;
 void* posix_acl_dup (struct posix_acl*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nfs3_cache_acls(struct inode *inode, struct posix_acl *acl,
      struct posix_acl *dfacl)
{
 struct nfs_inode *nfsi = NFS_I(inode);

 dprintk("nfs3_cache_acls(%s/%ld, %p, %p)\n", inode->i_sb->s_id,
  inode->i_ino, acl, dfacl);
 spin_lock(&inode->i_lock);
 __nfs3_forget_cached_acls(NFS_I(inode));
 if (!IS_ERR(acl))
  nfsi->acl_access = posix_acl_dup(acl);
 if (!IS_ERR(dfacl))
  nfsi->acl_default = posix_acl_dup(dfacl);
 spin_unlock(&inode->i_lock);
}
