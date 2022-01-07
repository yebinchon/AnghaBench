
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct sysfs_dirent* d_fsdata; } ;


 int iput (struct inode*) ;
 int sysfs_put (struct sysfs_dirent*) ;

__attribute__((used)) static void sysfs_d_iput(struct dentry * dentry, struct inode * inode)
{
 struct sysfs_dirent * sd = dentry->d_fsdata;

 sysfs_put(sd);
 iput(inode);
}
