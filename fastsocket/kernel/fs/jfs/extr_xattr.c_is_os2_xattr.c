
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_ea {scalar_t__ namelen; int name; } ;


 int XATTR_SECURITY_PREFIX ;
 scalar_t__ XATTR_SECURITY_PREFIX_LEN ;
 int XATTR_SYSTEM_PREFIX ;
 scalar_t__ XATTR_SYSTEM_PREFIX_LEN ;
 int XATTR_TRUSTED_PREFIX ;
 scalar_t__ XATTR_TRUSTED_PREFIX_LEN ;
 int XATTR_USER_PREFIX ;
 scalar_t__ XATTR_USER_PREFIX_LEN ;
 int strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int is_os2_xattr(struct jfs_ea *ea)
{



 if ((ea->namelen >= XATTR_SYSTEM_PREFIX_LEN) &&
     !strncmp(ea->name, XATTR_SYSTEM_PREFIX, XATTR_SYSTEM_PREFIX_LEN))
  return 0;



 if ((ea->namelen >= XATTR_USER_PREFIX_LEN) &&
     !strncmp(ea->name, XATTR_USER_PREFIX, XATTR_USER_PREFIX_LEN))
  return 0;



 if ((ea->namelen >= XATTR_SECURITY_PREFIX_LEN) &&
     !strncmp(ea->name, XATTR_SECURITY_PREFIX,
       XATTR_SECURITY_PREFIX_LEN))
  return 0;



 if ((ea->namelen >= XATTR_TRUSTED_PREFIX_LEN) &&
     !strncmp(ea->name, XATTR_TRUSTED_PREFIX, XATTR_TRUSTED_PREFIX_LEN))
  return 0;







 return 1;
}
