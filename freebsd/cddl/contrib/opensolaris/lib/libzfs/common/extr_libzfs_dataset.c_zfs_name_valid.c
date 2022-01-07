
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_type_t ;


 int B_FALSE ;
 scalar_t__ ZFS_TYPE_POOL ;
 int zfs_validate_name (int *,char const*,scalar_t__,int ) ;
 int zpool_name_valid (int *,int ,char const*) ;

int
zfs_name_valid(const char *name, zfs_type_t type)
{
 if (type == ZFS_TYPE_POOL)
  return (zpool_name_valid(((void*)0), B_FALSE, name));
 return (zfs_validate_name(((void*)0), name, type, B_FALSE));
}
