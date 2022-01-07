
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ACL_TYPE_DEFAULT ;
 int btrfs_xattr_get_acl (struct inode*,int ,void*,size_t) ;

__attribute__((used)) static int btrfs_xattr_acl_default_get(struct inode *inode, const char *name,
           void *value, size_t size)
{
 return btrfs_xattr_get_acl(inode, ACL_TYPE_DEFAULT, value, size);
}
