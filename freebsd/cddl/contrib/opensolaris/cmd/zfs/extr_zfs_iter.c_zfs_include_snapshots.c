
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int zfs_handle_t ;
struct TYPE_3__ {int cb_flags; int cb_types; } ;
typedef TYPE_1__ callback_data_t ;
typedef int boolean_t ;


 int ZFS_ITER_PROP_LISTSNAPS ;
 int ZFS_TYPE_SNAPSHOT ;
 int ZPOOL_PROP_LISTSNAPS ;
 int * zfs_get_pool_handle (int *) ;
 int zpool_get_prop_int (int *,int ,int *) ;

__attribute__((used)) static boolean_t
zfs_include_snapshots(zfs_handle_t *zhp, callback_data_t *cb)
{
 zpool_handle_t *zph;

 if ((cb->cb_flags & ZFS_ITER_PROP_LISTSNAPS) == 0)
  return (cb->cb_types & ZFS_TYPE_SNAPSHOT);

 zph = zfs_get_pool_handle(zhp);
 return (zpool_get_prop_int(zph, ZPOOL_PROP_LISTSNAPS, ((void*)0)));
}
