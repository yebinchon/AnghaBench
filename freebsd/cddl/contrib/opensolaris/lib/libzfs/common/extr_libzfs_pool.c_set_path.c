
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char const* zpool_name; TYPE_1__* zpool_hdl; } ;
typedef TYPE_2__ zpool_handle_t ;
struct TYPE_8__ {int zc_guid; int zc_value; int zc_name; int member_0; } ;
typedef TYPE_3__ zfs_cmd_t ;
typedef int nvlist_t ;
struct TYPE_6__ {int libzfs_fd; } ;


 int ZFS_IOC_VDEV_SETPATH ;
 int ZPOOL_CONFIG_GUID ;
 int ioctl (int ,int ,TYPE_3__*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int strncpy (int ,char const*,int) ;
 int verify (int) ;

__attribute__((used)) static void
set_path(zpool_handle_t *zhp, nvlist_t *nv, const char *path)
{
 zfs_cmd_t zc = { 0 };

 (void) strncpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 (void) strncpy(zc.zc_value, path, sizeof (zc.zc_value));
 verify(nvlist_lookup_uint64(nv, ZPOOL_CONFIG_GUID,
     &zc.zc_guid) == 0);

 (void) ioctl(zhp->zpool_hdl->libzfs_fd, ZFS_IOC_VDEV_SETPATH, &zc);
}
