
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int bootfs ;
typedef int boolean_t ;


 int B_FALSE ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZPOOL_PROP_BOOTFS ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ zpool_get_prop (int *,int ,char*,int,int *,int ) ;

boolean_t
zpool_is_bootable(zpool_handle_t *zhp)
{
 char bootfs[ZFS_MAX_DATASET_NAME_LEN];

 return (zpool_get_prop(zhp, ZPOOL_PROP_BOOTFS, bootfs,
     sizeof (bootfs), ((void*)0), B_FALSE) == 0 && strncmp(bootfs, "-",
     sizeof (bootfs)) != 0);
}
