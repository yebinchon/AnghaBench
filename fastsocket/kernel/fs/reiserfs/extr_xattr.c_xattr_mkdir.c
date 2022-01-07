
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; int i_mutex; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int (* mkdir ) (struct inode*,struct dentry*,int) ;} ;


 int BUG_ON (int) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct inode*,struct dentry*,int) ;
 int vfs_dq_init (struct inode*) ;

__attribute__((used)) static int xattr_mkdir(struct inode *dir, struct dentry *dentry, int mode)
{
 BUG_ON(!mutex_is_locked(&dir->i_mutex));
 vfs_dq_init(dir);
 return dir->i_op->mkdir(dir, dentry, mode);
}
