
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef scalar_t__ ino_t ;


 int ENAMETOOLONG ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ UFS_MAXNAMLEN ;
 int d_add (struct dentry*,struct inode*) ;
 int lock_kernel () ;
 struct inode* ufs_iget (int ,scalar_t__) ;
 scalar_t__ ufs_inode_by_name (struct inode*,struct dentry*) ;
 int unlock_kernel () ;

__attribute__((used)) static struct dentry *ufs_lookup(struct inode * dir, struct dentry *dentry, struct nameidata *nd)
{
 struct inode * inode = ((void*)0);
 ino_t ino;

 if (dentry->d_name.len > UFS_MAXNAMLEN)
  return ERR_PTR(-ENAMETOOLONG);

 lock_kernel();
 ino = ufs_inode_by_name(dir, dentry);
 if (ino) {
  inode = ufs_iget(dir->i_sb, ino);
  if (IS_ERR(inode)) {
   unlock_kernel();
   return ERR_CAST(inode);
  }
 }
 unlock_kernel();
 d_add(dentry, inode);
 return ((void*)0);
}
