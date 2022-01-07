
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int XATTR_USER_PREFIX ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int reiserfs_xattr_get (struct inode*,char const*,void*,size_t) ;
 int reiserfs_xattrs_user (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
user_get(struct inode *inode, const char *name, void *buffer, size_t size)
{

 if (strlen(name) < sizeof(XATTR_USER_PREFIX))
  return -EINVAL;
 if (!reiserfs_xattrs_user(inode->i_sb))
  return -EOPNOTSUPP;
 return reiserfs_xattr_get(inode, name, buffer, size);
}
