
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ACL_TYPE_ACCESS ;
 int EINVAL ;
 int ext2_xattr_set_acl (struct inode*,int ,void const*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ext2_xattr_set_acl_access(struct inode *inode, const char *name,
     const void *value, size_t size, int flags)
{
 if (strcmp(name, "") != 0)
  return -EINVAL;
 return ext2_xattr_set_acl(inode, ACL_TYPE_ACCESS, value, size);
}
