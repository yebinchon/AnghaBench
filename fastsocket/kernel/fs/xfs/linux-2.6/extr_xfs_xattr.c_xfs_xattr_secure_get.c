
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ATTR_SECURE ;
 int __xfs_xattr_get (struct inode*,char const*,void*,size_t,int ) ;

__attribute__((used)) static int
xfs_xattr_secure_get(struct inode *inode, const char *name,
  void *value, size_t size)
{
 return __xfs_xattr_get(inode, name, value, size, ATTR_SECURE);
}
