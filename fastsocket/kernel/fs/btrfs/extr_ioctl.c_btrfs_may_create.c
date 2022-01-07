
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {scalar_t__ d_inode; } ;


 int EEXIST ;
 int ENOENT ;
 scalar_t__ IS_DEADDIR (struct inode*) ;
 int MAY_EXEC ;
 int MAY_WRITE ;
 int inode_permission (struct inode*,int) ;

__attribute__((used)) static inline int btrfs_may_create(struct inode *dir, struct dentry *child)
{
 if (child->d_inode)
  return -EEXIST;
 if (IS_DEADDIR(dir))
  return -ENOENT;
 return inode_permission(dir, MAY_WRITE | MAY_EXEC);
}
