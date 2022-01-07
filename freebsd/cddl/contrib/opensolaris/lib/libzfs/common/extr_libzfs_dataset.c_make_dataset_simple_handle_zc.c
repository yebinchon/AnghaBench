
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zpool_hdl; int zfs_type; int zfs_head_type; int zfs_name; int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_9__ {int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;


 int ZFS_TYPE_SNAPSHOT ;
 TYPE_1__* calloc (int,int) ;
 int strlcpy (int ,int ,int) ;
 int zpool_handle (TYPE_1__*) ;

zfs_handle_t *
make_dataset_simple_handle_zc(zfs_handle_t *pzhp, zfs_cmd_t *zc)
{
 zfs_handle_t *zhp = calloc(sizeof (zfs_handle_t), 1);

 if (zhp == ((void*)0))
  return (((void*)0));

 zhp->zfs_hdl = pzhp->zfs_hdl;
 (void) strlcpy(zhp->zfs_name, zc->zc_name, sizeof (zhp->zfs_name));
 zhp->zfs_head_type = pzhp->zfs_type;
 zhp->zfs_type = ZFS_TYPE_SNAPSHOT;
 zhp->zpool_hdl = zpool_handle(zhp);
 return (zhp);
}
