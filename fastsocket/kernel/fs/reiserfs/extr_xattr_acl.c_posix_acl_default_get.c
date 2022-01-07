
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int POSIX_ACL_XATTR_DEFAULT ;


 int ACL_TYPE_DEFAULT ;
 int EINVAL ;
 int strlen (char const*) ;
 int xattr_get_acl (struct inode*,int ,void*,size_t) ;

__attribute__((used)) static int
posix_acl_default_get(struct inode *inode, const char *name,
        void *buffer, size_t size)
{
 if (strlen(name) != sizeof(POSIX_ACL_XATTR_DEFAULT) - 1)
  return -EINVAL;
 return xattr_get_acl(inode, ACL_TYPE_DEFAULT, buffer, size);
}
