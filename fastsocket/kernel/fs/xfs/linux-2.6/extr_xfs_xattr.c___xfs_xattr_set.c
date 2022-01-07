
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct inode {int dummy; } ;


 int ATTR_CREATE ;
 int ATTR_REPLACE ;
 int EINVAL ;
 int XATTR_CREATE ;
 int XATTR_REPLACE ;
 struct xfs_inode* XFS_I (struct inode*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int xfs_attr_remove (struct xfs_inode*,unsigned char*,int) ;
 int xfs_attr_set (struct xfs_inode*,unsigned char*,void*,size_t,int) ;

__attribute__((used)) static int
__xfs_xattr_set(struct inode *inode, const char *name, const void *value,
  size_t size, int flags, int xflags)
{
 struct xfs_inode *ip = XFS_I(inode);

 if (strcmp(name, "") == 0)
  return -EINVAL;


 if (flags & XATTR_CREATE)
  xflags |= ATTR_CREATE;
 if (flags & XATTR_REPLACE)
  xflags |= ATTR_REPLACE;

 if (!value)
  return -xfs_attr_remove(ip, (unsigned char *)name, xflags);
 return -xfs_attr_set(ip, (unsigned char *)name,
    (void *)value, size, xflags);
}
