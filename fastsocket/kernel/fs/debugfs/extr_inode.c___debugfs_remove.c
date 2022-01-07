
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mode; int i_private; } ;




 int S_IFMT ;
 int d_delete (struct dentry*) ;
 scalar_t__ debugfs_positive (struct dentry*) ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int kfree (int ) ;
 int simple_rmdir (TYPE_1__*,struct dentry*) ;
 int simple_unlink (TYPE_1__*,struct dentry*) ;

__attribute__((used)) static void __debugfs_remove(struct dentry *dentry, struct dentry *parent)
{
 int ret = 0;

 if (debugfs_positive(dentry)) {
  if (dentry->d_inode) {
   dget(dentry);
   switch (dentry->d_inode->i_mode & S_IFMT) {
   case 129:
    ret = simple_rmdir(parent->d_inode, dentry);
    break;
   case 128:
    kfree(dentry->d_inode->i_private);

   default:
    simple_unlink(parent->d_inode, dentry);
    break;
   }
   if (!ret)
    d_delete(dentry);
   dput(dentry);
  }
 }
}
