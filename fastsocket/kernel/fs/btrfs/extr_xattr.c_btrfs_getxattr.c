
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;
 int XATTR_SYSTEM_PREFIX ;
 int XATTR_SYSTEM_PREFIX_LEN ;
 int __btrfs_getxattr (int ,char const*,void*,size_t) ;
 int btrfs_is_valid_xattr (char const*) ;
 int generic_getxattr (struct dentry*,char const*,void*,size_t) ;
 int strncmp (char const*,int ,int ) ;

ssize_t btrfs_getxattr(struct dentry *dentry, const char *name,
         void *buffer, size_t size)
{





 if (!strncmp(name, XATTR_SYSTEM_PREFIX, XATTR_SYSTEM_PREFIX_LEN))
  return generic_getxattr(dentry, name, buffer, size);

 if (!btrfs_is_valid_xattr(name))
  return -EOPNOTSUPP;
 return __btrfs_getxattr(dentry->d_inode, name, buffer, size);
}
