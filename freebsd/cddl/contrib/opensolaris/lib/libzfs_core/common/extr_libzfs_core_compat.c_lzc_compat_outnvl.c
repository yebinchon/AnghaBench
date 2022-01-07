
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_ioc_t ;
struct TYPE_3__ {int zc_perm_action; int zc_objset_type; int zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 scalar_t__ ZFS_IOCVER_LZC ;

 int fnvlist_add_uint64 (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 scalar_t__ zfs_ioctl_version ;

int
lzc_compat_outnvl(zfs_cmd_t *zc, const zfs_ioc_t ioc, nvlist_t **outnvl)
{
 nvlist_t *nvl;

 if (zfs_ioctl_version >= ZFS_IOCVER_LZC)
  return (0);

 switch (ioc) {
 case 128:
  nvl = fnvlist_alloc();
  fnvlist_add_uint64(nvl, "used", zc->zc_cookie);
  fnvlist_add_uint64(nvl, "compressed", zc->zc_objset_type);
  fnvlist_add_uint64(nvl, "uncompressed", zc->zc_perm_action);
  *outnvl = nvl;
 break;
 }

 return (0);
}
