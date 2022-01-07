
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct posix_acl {int dummy; } ;
struct nfs_inode {struct posix_acl* acl_default; struct posix_acl* acl_access; } ;
struct inode {int i_ino; TYPE_1__* i_sb; int i_lock; } ;
struct TYPE_2__ {int s_id; } ;




 int EAGAIN ;
 int EINVAL ;
 struct posix_acl* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int dprintk (char*,int ,int ,int,struct posix_acl*) ;
 struct posix_acl* posix_acl_dup (struct posix_acl*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct posix_acl *nfs3_get_cached_acl(struct inode *inode, int type)
{
 struct nfs_inode *nfsi = NFS_I(inode);
 struct posix_acl *acl = ERR_PTR(-EINVAL);

 spin_lock(&inode->i_lock);
 switch(type) {
  case 129:
   acl = nfsi->acl_access;
   break;

  case 128:
   acl = nfsi->acl_default;
   break;

  default:
   goto out;
 }
 if (IS_ERR(acl))
  acl = ERR_PTR(-EAGAIN);
 else
  acl = posix_acl_dup(acl);
out:
 spin_unlock(&inode->i_lock);
 dprintk("NFS: nfs3_get_cached_acl(%s/%ld, %d) = %p\n", inode->i_sb->s_id,
  inode->i_ino, type, acl);
 return acl;
}
