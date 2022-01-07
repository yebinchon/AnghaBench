
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {struct dentry* s_dentry; } ;


 int BUG_ON (int) ;
 int configfs_put (struct configfs_dirent*) ;
 int iput (struct inode*) ;

__attribute__((used)) static void configfs_d_iput(struct dentry * dentry,
       struct inode * inode)
{
 struct configfs_dirent * sd = dentry->d_fsdata;

 if (sd) {
  BUG_ON(sd->s_dentry != dentry);
  sd->s_dentry = ((void*)0);
  configfs_put(sd);
 }
 iput(inode);
}
