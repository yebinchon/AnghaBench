
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int EPERM ;
 scalar_t__ append ;
 char* inode_dentry_name (struct inode*,struct dentry*) ;
 int kfree (char*) ;
 int unlink_file (char*) ;

int hostfs_unlink(struct inode *ino, struct dentry *dentry)
{
 char *file;
 int err;

 if ((file = inode_dentry_name(ino, dentry)) == ((void*)0))
  return -ENOMEM;
 if (append)
  return -EPERM;

 err = unlink_file(file);
 kfree(file);
 return err;
}
