
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XFS_ATTR_ROOT ;
 int XFS_ATTR_SECURE ;

__attribute__((used)) static unsigned int xfs_xattr_prefix_len(int flags)
{
 if (flags & XFS_ATTR_SECURE)
  return sizeof("security");
 else if (flags & XFS_ATTR_ROOT)
  return sizeof("trusted");
 else
  return sizeof("user");
}
