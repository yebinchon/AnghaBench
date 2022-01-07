
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 int omfs_add_node (struct inode*,struct dentry*,int) ;

__attribute__((used)) static int omfs_create(struct inode *dir, struct dentry *dentry, int mode,
  struct nameidata *nd)
{
 return omfs_add_node(dir, dentry, mode | S_IFREG);
}
