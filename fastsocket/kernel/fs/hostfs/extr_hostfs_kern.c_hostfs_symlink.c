
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 char* inode_dentry_name (struct inode*,struct dentry*) ;
 int kfree (char*) ;
 int make_symlink (char*,char const*) ;

int hostfs_symlink(struct inode *ino, struct dentry *dentry, const char *to)
{
 char *file;
 int err;

 if ((file = inode_dentry_name(ino, dentry)) == ((void*)0))
  return -ENOMEM;
 err = make_symlink(file, to);
 kfree(file);
 return err;
}
