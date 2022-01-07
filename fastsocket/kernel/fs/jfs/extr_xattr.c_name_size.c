
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_ea {int namelen; } ;


 int XATTR_OS2_PREFIX_LEN ;
 scalar_t__ is_os2_xattr (struct jfs_ea*) ;

__attribute__((used)) static inline int name_size(struct jfs_ea *ea)
{
 if (is_os2_xattr(ea))
  return ea->namelen + XATTR_OS2_PREFIX_LEN;
 else
  return ea->namelen;
}
