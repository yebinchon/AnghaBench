
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dentry {int dummy; } ;


 int LLONG_MAX ;
 int vfs_fsync_range (struct file*,struct dentry*,int ,int ,int) ;

int vfs_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 return vfs_fsync_range(file, dentry, 0, LLONG_MAX, datasync);
}
