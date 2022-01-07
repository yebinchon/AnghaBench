
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dentry {int dummy; } ;


 int ecryptfs_dentry_to_lower (struct dentry*) ;
 int ecryptfs_file_to_lower (struct file*) ;
 int vfs_fsync (int ,int ,int) ;

__attribute__((used)) static int
ecryptfs_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 return vfs_fsync(ecryptfs_file_to_lower(file),
    ecryptfs_dentry_to_lower(dentry),
    datasync);
}
