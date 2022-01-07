
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {TYPE_3__* i_sb; int i_mutex; int i_flags; TYPE_1__* i_op; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_6__ {TYPE_2__* s_type; } ;
struct TYPE_5__ {int fs_flags; } ;
struct TYPE_4__ {int (* rename ) (struct inode*,struct dentry*,struct inode*,struct dentry*) ;} ;


 int EBUSY ;
 int FS_RENAME_DOES_D_MOVE ;
 int MAY_WRITE ;
 int S_DEAD ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int d_move (struct dentry*,struct dentry*) ;
 int d_rehash (struct dentry*) ;
 scalar_t__ d_unhashed (struct dentry*) ;
 int dentry_unhash (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_permission (struct inode*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_inode_rename (struct inode*,struct dentry*,struct inode*,struct dentry*) ;
 int stub1 (struct inode*,struct dentry*,struct inode*,struct dentry*) ;

__attribute__((used)) static int vfs_rename_dir(struct inode *old_dir, struct dentry *old_dentry,
     struct inode *new_dir, struct dentry *new_dentry)
{
 int error = 0;
 struct inode *target;





 if (new_dir != old_dir) {
  error = inode_permission(old_dentry->d_inode, MAY_WRITE);
  if (error)
   return error;
 }

 error = security_inode_rename(old_dir, old_dentry, new_dir, new_dentry);
 if (error)
  return error;

 target = new_dentry->d_inode;
 if (target) {
  mutex_lock(&target->i_mutex);
  dentry_unhash(new_dentry);
 }
 if (d_mountpoint(old_dentry)||d_mountpoint(new_dentry))
  error = -EBUSY;
 else
  error = old_dir->i_op->rename(old_dir, old_dentry, new_dir, new_dentry);
 if (target) {
  if (!error)
   target->i_flags |= S_DEAD;
  mutex_unlock(&target->i_mutex);
  if (d_unhashed(new_dentry))
   d_rehash(new_dentry);
  dput(new_dentry);
 }
 if (!error)
  if (!(old_dir->i_sb->s_type->fs_flags & FS_RENAME_DOES_D_MOVE))
   d_move(old_dentry,new_dentry);
 return error;
}
