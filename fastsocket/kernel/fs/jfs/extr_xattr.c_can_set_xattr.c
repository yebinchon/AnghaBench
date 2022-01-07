
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EOPNOTSUPP ;
 int XATTR_OS2_PREFIX ;
 int XATTR_OS2_PREFIX_LEN ;
 int XATTR_SECURITY_PREFIX ;
 int XATTR_SECURITY_PREFIX_LEN ;
 int XATTR_SYSTEM_PREFIX ;
 int XATTR_SYSTEM_PREFIX_LEN ;
 int XATTR_TRUSTED_PREFIX ;
 int XATTR_TRUSTED_PREFIX_LEN ;
 int XATTR_USER_PREFIX ;
 int XATTR_USER_PREFIX_LEN ;
 int can_set_system_xattr (struct inode*,char const*,void const*,size_t) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static int can_set_xattr(struct inode *inode, const char *name,
    const void *value, size_t value_len)
{
 if (!strncmp(name, XATTR_SYSTEM_PREFIX, XATTR_SYSTEM_PREFIX_LEN))
  return can_set_system_xattr(inode, name, value, value_len);




 if (strncmp(name, XATTR_TRUSTED_PREFIX, XATTR_TRUSTED_PREFIX_LEN) &&
     strncmp(name, XATTR_SECURITY_PREFIX, XATTR_SECURITY_PREFIX_LEN) &&
     strncmp(name, XATTR_USER_PREFIX, XATTR_USER_PREFIX_LEN) &&
     strncmp(name, XATTR_OS2_PREFIX, XATTR_OS2_PREFIX_LEN))
  return -EOPNOTSUPP;

 return 0;
}
