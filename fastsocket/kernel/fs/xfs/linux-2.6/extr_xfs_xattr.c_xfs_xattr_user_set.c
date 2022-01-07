
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int __xfs_xattr_set (struct inode*,char const*,void const*,size_t,int,int ) ;

__attribute__((used)) static int
xfs_xattr_user_set(struct inode *inode, const char *name,
  const void *value, size_t size, int flags)
{
 return __xfs_xattr_set(inode, name, value, size, flags, 0);
}
