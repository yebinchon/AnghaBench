
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zd_name; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int zfs_prop_t ;
typedef int uint64_t ;
typedef int proplist ;


 int RW_READER ;
 int ZFS_PROP_CHECKSUM ;
 int ZFS_PROP_COMPRESSION ;
 int ZFS_PROP_COPIES ;
 int ZFS_PROP_DEDUP ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int ztest_dsl_prop_set_uint64 (int ,int ,int ,int) ;
 int ztest_name_lock ;
 scalar_t__ ztest_random (int) ;
 int ztest_random_dsl_prop (int ) ;

void
ztest_dsl_prop_get_set(ztest_ds_t *zd, uint64_t id)
{
 zfs_prop_t proplist[] = {
  ZFS_PROP_CHECKSUM,
  ZFS_PROP_COMPRESSION,
  ZFS_PROP_COPIES,
  ZFS_PROP_DEDUP
 };

 rw_enter(&ztest_name_lock, RW_READER);

 for (int p = 0; p < sizeof (proplist) / sizeof (proplist[0]); p++)
  (void) ztest_dsl_prop_set_uint64(zd->zd_name, proplist[p],
      ztest_random_dsl_prop(proplist[p]), (int)ztest_random(2));

 rw_exit(&ztest_name_lock);
}
