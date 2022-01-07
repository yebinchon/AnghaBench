
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_inode; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (int ) ;
 int EOPNOTSUPP ;
 int EROFS ;
 int XATTR_SYSTEM_PREFIX ;
 int XATTR_SYSTEM_PREFIX_LEN ;
 int __btrfs_setxattr (int *,int ,char const*,void const*,size_t,int) ;
 int btrfs_is_valid_xattr (char const*) ;
 scalar_t__ btrfs_root_readonly (struct btrfs_root*) ;
 int generic_setxattr (struct dentry*,char const*,void const*,size_t,int) ;
 int strncmp (char const*,int ,int ) ;

int btrfs_setxattr(struct dentry *dentry, const char *name, const void *value,
     size_t size, int flags)
{
 struct btrfs_root *root = BTRFS_I(dentry->d_inode)->root;





 if (btrfs_root_readonly(root))
  return -EROFS;






 if (!strncmp(name, XATTR_SYSTEM_PREFIX, XATTR_SYSTEM_PREFIX_LEN))
  return generic_setxattr(dentry, name, value, size, flags);

 if (!btrfs_is_valid_xattr(name))
  return -EOPNOTSUPP;

 if (size == 0)
  value = "";

 return __btrfs_setxattr(((void*)0), dentry->d_inode, name, value, size,
    flags);
}
