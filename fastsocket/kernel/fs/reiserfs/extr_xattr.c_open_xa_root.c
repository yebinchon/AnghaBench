
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int xattr_root; struct dentry* priv_root; } ;
struct TYPE_3__ {int i_mutex; } ;


 int ENODATA ;
 struct dentry* ERR_PTR (int) ;
 int I_MUTEX_XATTR ;
 TYPE_2__* REISERFS_SB (struct super_block*) ;
 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 scalar_t__ xattr_may_create (int) ;
 int xattr_mkdir (TYPE_1__*,struct dentry*,int) ;

__attribute__((used)) static struct dentry *open_xa_root(struct super_block *sb, int flags)
{
 struct dentry *privroot = REISERFS_SB(sb)->priv_root;
 struct dentry *xaroot;
 if (!privroot->d_inode)
  return ERR_PTR(-ENODATA);

 mutex_lock_nested(&privroot->d_inode->i_mutex, I_MUTEX_XATTR);

 xaroot = dget(REISERFS_SB(sb)->xattr_root);
 if (!xaroot)
  xaroot = ERR_PTR(-ENODATA);
 else if (!xaroot->d_inode) {
  int err = -ENODATA;
  if (xattr_may_create(flags))
   err = xattr_mkdir(privroot->d_inode, xaroot, 0700);
  if (err) {
   dput(xaroot);
   xaroot = ERR_PTR(err);
  }
 }

 mutex_unlock(&privroot->d_inode->i_mutex);
 return xaroot;
}
