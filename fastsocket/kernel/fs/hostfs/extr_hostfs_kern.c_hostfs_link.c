
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 char* dentry_name (struct dentry*,int ) ;
 char* inode_dentry_name (struct inode*,struct dentry*) ;
 int kfree (char*) ;
 int link_file (char*,char*) ;

int hostfs_link(struct dentry *to, struct inode *ino, struct dentry *from)
{
 char *from_name, *to_name;
 int err;

 if ((from_name = inode_dentry_name(ino, from)) == ((void*)0))
  return -ENOMEM;
 to_name = dentry_name(to, 0);
 if (to_name == ((void*)0)) {
  kfree(from_name);
  return -ENOMEM;
 }
 err = link_file(to_name, from_name);
 kfree(from_name);
 kfree(to_name);
 return err;
}
