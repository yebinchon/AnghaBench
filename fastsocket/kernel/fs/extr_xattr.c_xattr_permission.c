
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int MAY_WRITE ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISREG (int) ;
 int S_ISVTX ;
 int XATTR_SECURITY_PREFIX ;
 int XATTR_SECURITY_PREFIX_LEN ;
 int XATTR_SYSTEM_PREFIX ;
 int XATTR_SYSTEM_PREFIX_LEN ;
 int XATTR_TRUSTED_PREFIX ;
 int XATTR_TRUSTED_PREFIX_LEN ;
 int XATTR_USER_PREFIX ;
 int XATTR_USER_PREFIX_LEN ;
 scalar_t__ capable (int ) ;
 int inode_permission (struct inode*,int) ;
 int is_owner_or_cap (struct inode*) ;
 int strncmp (char const*,int ,int ) ;

__attribute__((used)) static int
xattr_permission(struct inode *inode, const char *name, int mask)
{




 if (mask & MAY_WRITE) {
  if (IS_IMMUTABLE(inode) || IS_APPEND(inode))
   return -EPERM;
 }





 if (!strncmp(name, XATTR_SECURITY_PREFIX, XATTR_SECURITY_PREFIX_LEN) ||
     !strncmp(name, XATTR_SYSTEM_PREFIX, XATTR_SYSTEM_PREFIX_LEN))
  return 0;




 if (!strncmp(name, XATTR_TRUSTED_PREFIX, XATTR_TRUSTED_PREFIX_LEN))
  return (capable(CAP_SYS_ADMIN) ? 0 : -EPERM);





 if (!strncmp(name, XATTR_USER_PREFIX, XATTR_USER_PREFIX_LEN)) {
  if (!S_ISREG(inode->i_mode) && !S_ISDIR(inode->i_mode))
   return -EPERM;
  if (S_ISDIR(inode->i_mode) && (inode->i_mode & S_ISVTX) &&
      (mask & MAY_WRITE) && !is_owner_or_cap(inode))
   return -EPERM;
 }

 return inode_permission(inode, mask);
}
