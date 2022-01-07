
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IALLUGO ;
 int S_IFREG ;
 int debugfs_mknod (struct inode*,struct dentry*,int,int ,void*,struct file_operations const*) ;
 int fsnotify_create (struct inode*,struct dentry*) ;

__attribute__((used)) static int debugfs_create(struct inode *dir, struct dentry *dentry, int mode,
     void *data, const struct file_operations *fops)
{
 int res;

 mode = (mode & S_IALLUGO) | S_IFREG;
 res = debugfs_mknod(dir, dentry, mode, 0, data, fops);
 if (!res)
  fsnotify_create(dir, dentry);
 return res;
}
