
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static int hppfs_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 return 0;
}
