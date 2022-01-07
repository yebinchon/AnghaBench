
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __uint32_t ;


 int EPERM ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int XFS_I (struct inode*) ;
 int xfs_attr_remove (int ,unsigned char*,int ) ;

int
xfs_attrmulti_attr_remove(
 struct inode *inode,
 unsigned char *name,
 __uint32_t flags)
{
 if (IS_IMMUTABLE(inode) || IS_APPEND(inode))
  return EPERM;
 return xfs_attr_remove(XFS_I(inode), name, flags);
}
