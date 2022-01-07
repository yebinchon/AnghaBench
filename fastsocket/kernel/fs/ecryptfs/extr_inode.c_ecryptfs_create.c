
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int KERN_WARNING ;
 int ecryptfs_do_create (struct inode*,struct dentry*,int,struct nameidata*) ;
 int ecryptfs_initialize_file (struct dentry*) ;
 int ecryptfs_printk (int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ecryptfs_create(struct inode *directory_inode, struct dentry *ecryptfs_dentry,
  int mode, struct nameidata *nd)
{
 int rc;


 rc = ecryptfs_do_create(directory_inode, ecryptfs_dentry, mode, nd);
 if (unlikely(rc)) {
  ecryptfs_printk(KERN_WARNING, "Failed to create file in"
    "lower filesystem\n");
  goto out;
 }


 rc = ecryptfs_initialize_file(ecryptfs_dentry);
out:
 return rc;
}
