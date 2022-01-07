
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_userquota_prop_t ;
typedef int zfs_handle_t ;
typedef int uint64_t ;


 int zfs_prop_get_userquota_common (int *,char const*,int *,int *) ;

int
zfs_prop_get_userquota_int(zfs_handle_t *zhp, const char *propname,
    uint64_t *propvalue)
{
 zfs_userquota_prop_t type;

 return (zfs_prop_get_userquota_common(zhp, propname, propvalue,
     &type));
}
