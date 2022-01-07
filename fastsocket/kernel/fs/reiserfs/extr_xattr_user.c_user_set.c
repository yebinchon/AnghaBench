
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int XATTR_USER_PREFIX ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int reiserfs_xattr_set (struct inode*,char const*,void const*,size_t,int) ;
 int reiserfs_xattrs_user (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
user_set(struct inode *inode, const char *name, const void *buffer,
  size_t size, int flags)
{
 if (strlen(name) < sizeof(XATTR_USER_PREFIX))
  return -EINVAL;

 if (!reiserfs_xattrs_user(inode->i_sb))
  return -EOPNOTSUPP;
 return reiserfs_xattr_set(inode, name, buffer, size, flags);
}
