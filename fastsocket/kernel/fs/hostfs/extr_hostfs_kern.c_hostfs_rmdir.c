
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int do_rmdir (char*) ;
 char* inode_dentry_name (struct inode*,struct dentry*) ;
 int kfree (char*) ;

int hostfs_rmdir(struct inode *ino, struct dentry *dentry)
{
 char *file;
 int err;

 if ((file = inode_dentry_name(ino, dentry)) == ((void*)0))
  return -ENOMEM;
 err = do_rmdir(file);
 kfree(file);
 return err;
}
