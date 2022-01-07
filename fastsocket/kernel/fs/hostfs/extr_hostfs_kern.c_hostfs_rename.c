
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 char* inode_dentry_name (struct inode*,struct dentry*) ;
 int kfree (char*) ;
 int rename_file (char*,char*) ;

int hostfs_rename(struct inode *from_ino, struct dentry *from,
    struct inode *to_ino, struct dentry *to)
{
 char *from_name, *to_name;
 int err;

 if ((from_name = inode_dentry_name(from_ino, from)) == ((void*)0))
  return -ENOMEM;
 if ((to_name = inode_dentry_name(to_ino, to)) == ((void*)0)) {
  kfree(from_name);
  return -ENOMEM;
 }
 err = rename_file(from_name, to_name);
 kfree(from_name);
 kfree(to_name);
 return err;
}
