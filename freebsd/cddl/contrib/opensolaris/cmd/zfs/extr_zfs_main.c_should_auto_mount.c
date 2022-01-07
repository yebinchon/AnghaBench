
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 scalar_t__ ZFS_CANMOUNT_ON ;
 int ZFS_PROP_CANMOUNT ;
 int zfs_get_type (int *) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;
 int zfs_prop_valid_for_type (int ,int ) ;

__attribute__((used)) static boolean_t
should_auto_mount(zfs_handle_t *zhp)
{
 if (!zfs_prop_valid_for_type(ZFS_PROP_CANMOUNT, zfs_get_type(zhp)))
  return (B_FALSE);
 return (zfs_prop_get_int(zhp, ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_ON);
}
