
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int XATTR_TRUSTED_PREFIX ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_PRIVATE (struct inode*) ;
 int capable (int ) ;
 int reiserfs_xattr_set (struct inode*,char const*,void const*,size_t,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
trusted_set(struct inode *inode, const char *name, const void *buffer,
     size_t size, int flags)
{
 if (strlen(name) < sizeof(XATTR_TRUSTED_PREFIX))
  return -EINVAL;

 if (!capable(CAP_SYS_ADMIN) || IS_PRIVATE(inode))
  return -EPERM;

 return reiserfs_xattr_set(inode, name, buffer, size, flags);
}
