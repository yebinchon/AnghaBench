
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFDIR ;
 int S_IRWXUGO ;
 int S_ISVTX ;
 int inc_nlink (struct inode*) ;
 int usbfs_mknod (struct inode*,struct dentry*,int,int ) ;

__attribute__((used)) static int usbfs_mkdir (struct inode *dir, struct dentry *dentry, int mode)
{
 int res;

 mode = (mode & (S_IRWXUGO | S_ISVTX)) | S_IFDIR;
 res = usbfs_mknod (dir, dentry, mode, 0);
 if (!res)
  inc_nlink(dir);
 return res;
}
