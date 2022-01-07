
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file_operations {int dummy; } ;
struct dentry {TYPE_3__* d_inode; } ;
typedef int mode_t ;
struct TYPE_8__ {int i_mutex; } ;
struct TYPE_7__ {TYPE_1__* mnt_sb; } ;
struct TYPE_6__ {struct dentry* s_root; } ;


 int EFAULT ;
 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;


 int S_IFMT ;
 int debugfs_create (TYPE_3__*,struct dentry*,int,void*,struct file_operations const*) ;
 int debugfs_link (TYPE_3__*,struct dentry*,int,void*,struct file_operations const*) ;
 int debugfs_mkdir (TYPE_3__*,struct dentry*,int,void*,struct file_operations const*) ;
 TYPE_2__* debugfs_mount ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (char const*,struct dentry*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int debugfs_create_by_name(const char *name, mode_t mode,
      struct dentry *parent,
      struct dentry **dentry,
      void *data,
      const struct file_operations *fops)
{
 int error = 0;






 if (!parent) {
  if (debugfs_mount && debugfs_mount->mnt_sb) {
   parent = debugfs_mount->mnt_sb->s_root;
  }
 }
 if (!parent) {
  pr_debug("debugfs: Ah! can not find a parent!\n");
  return -EFAULT;
 }

 *dentry = ((void*)0);
 mutex_lock(&parent->d_inode->i_mutex);
 *dentry = lookup_one_len(name, parent, strlen(name));
 if (!IS_ERR(*dentry)) {
  switch (mode & S_IFMT) {
  case 129:
   error = debugfs_mkdir(parent->d_inode, *dentry, mode,
           data, fops);
   break;
  case 128:
   error = debugfs_link(parent->d_inode, *dentry, mode,
          data, fops);
   break;
  default:
   error = debugfs_create(parent->d_inode, *dentry, mode,
            data, fops);
   break;
  }
  dput(*dentry);
 } else
  error = PTR_ERR(*dentry);
 mutex_unlock(&parent->d_inode->i_mutex);

 return error;
}
