
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int zfs_handle_t ;


 int SPA_VERSION_REFRESERVATION ;
 int ZFS_PROP_REFRESERVATION ;
 int ZFS_PROP_RESERVATION ;
 scalar_t__ zfs_spa_version (int *,int*) ;

__attribute__((used)) static int
zfs_which_resv_prop(zfs_handle_t *zhp, zfs_prop_t *resv_prop)
{
 int spa_version;

 if (zfs_spa_version(zhp, &spa_version) < 0)
  return (-1);

 if (spa_version >= SPA_VERSION_REFRESERVATION)
  *resv_prop = ZFS_PROP_REFRESERVATION;
 else
  *resv_prop = ZFS_PROP_RESERVATION;

 return (0);
}
