
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFDIR ;
 int S_IRWXUGO ;
 int S_ISVTX ;
 int debugfs_mknod (struct inode*,struct dentry*,int,int ,void*,struct file_operations const*) ;
 int fsnotify_mkdir (struct inode*,struct dentry*) ;
 int inc_nlink (struct inode*) ;

__attribute__((used)) static int debugfs_mkdir(struct inode *dir, struct dentry *dentry, int mode,
    void *data, const struct file_operations *fops)
{
 int res;

 mode = (mode & (S_IRWXUGO | S_ISVTX)) | S_IFDIR;
 res = debugfs_mknod(dir, dentry, mode, 0, data, fops);
 if (!res) {
  inc_nlink(dir);
  fsnotify_mkdir(dir, dentry);
 }
 return res;
}
