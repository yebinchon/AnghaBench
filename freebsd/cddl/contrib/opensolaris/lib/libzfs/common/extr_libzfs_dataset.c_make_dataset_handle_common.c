
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dds_type; scalar_t__ dds_is_snapshot; } ;
struct TYPE_7__ {int * zpool_hdl; void* zfs_type; TYPE_1__ zfs_dmustats; void* zfs_head_type; } ;
typedef TYPE_2__ zfs_handle_t ;
typedef int zfs_cmd_t ;


 scalar_t__ DMU_OST_ZFS ;
 scalar_t__ DMU_OST_ZVOL ;
 void* ZFS_TYPE_FILESYSTEM ;
 void* ZFS_TYPE_SNAPSHOT ;
 void* ZFS_TYPE_VOLUME ;
 int abort () ;
 scalar_t__ put_stats_zhdl (TYPE_2__*,int *) ;
 int * zpool_handle (TYPE_2__*) ;

__attribute__((used)) static int
make_dataset_handle_common(zfs_handle_t *zhp, zfs_cmd_t *zc)
{
 if (put_stats_zhdl(zhp, zc) != 0)
  return (-1);





 if (zhp->zfs_dmustats.dds_type == DMU_OST_ZVOL)
  zhp->zfs_head_type = ZFS_TYPE_VOLUME;
 else if (zhp->zfs_dmustats.dds_type == DMU_OST_ZFS)
  zhp->zfs_head_type = ZFS_TYPE_FILESYSTEM;
 else
  abort();

 if (zhp->zfs_dmustats.dds_is_snapshot)
  zhp->zfs_type = ZFS_TYPE_SNAPSHOT;
 else if (zhp->zfs_dmustats.dds_type == DMU_OST_ZVOL)
  zhp->zfs_type = ZFS_TYPE_VOLUME;
 else if (zhp->zfs_dmustats.dds_type == DMU_OST_ZFS)
  zhp->zfs_type = ZFS_TYPE_FILESYSTEM;
 else
  abort();

 if ((zhp->zpool_hdl = zpool_handle(zhp)) == ((void*)0))
  return (-1);

 return (0);
}
