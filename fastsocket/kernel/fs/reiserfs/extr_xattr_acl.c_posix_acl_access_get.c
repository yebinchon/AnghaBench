
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int POSIX_ACL_XATTR_ACCESS ;


 int ACL_TYPE_ACCESS ;
 int EINVAL ;
 int strlen (char const*) ;
 int xattr_get_acl (struct inode*,int ,void*,size_t) ;

__attribute__((used)) static int
posix_acl_access_get(struct inode *inode, const char *name,
       void *buffer, size_t size)
{
 if (strlen(name) != sizeof(POSIX_ACL_XATTR_ACCESS) - 1)
  return -EINVAL;
 return xattr_get_acl(inode, ACL_TYPE_ACCESS, buffer, size);
}
