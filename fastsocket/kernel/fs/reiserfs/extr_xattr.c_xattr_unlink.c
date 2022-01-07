
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; int i_mutex; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {int i_mutex; } ;
struct TYPE_3__ {int (* unlink ) (struct inode*,struct dentry*) ;} ;


 int BUG_ON (int) ;
 int I_MUTEX_CHILD ;
 int d_delete (struct dentry*) ;
 int mutex_is_locked (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int stub1 (struct inode*,struct dentry*) ;
 int vfs_dq_init (struct inode*) ;

__attribute__((used)) static int xattr_unlink(struct inode *dir, struct dentry *dentry)
{
 int error;
 BUG_ON(!mutex_is_locked(&dir->i_mutex));
 vfs_dq_init(dir);

 mutex_lock_nested(&dentry->d_inode->i_mutex, I_MUTEX_CHILD);
 error = dir->i_op->unlink(dir, dentry);
 mutex_unlock(&dentry->d_inode->i_mutex);

 if (!error)
  d_delete(dentry);
 return error;
}
