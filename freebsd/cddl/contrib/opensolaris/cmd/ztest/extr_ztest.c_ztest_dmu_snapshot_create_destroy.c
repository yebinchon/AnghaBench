
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zd_name; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int uint64_t ;


 int RW_READER ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int ztest_name_lock ;
 int ztest_snapshot_create (int ,int ) ;
 int ztest_snapshot_destroy (int ,int ) ;

void
ztest_dmu_snapshot_create_destroy(ztest_ds_t *zd, uint64_t id)
{
 rw_enter(&ztest_name_lock, RW_READER);
 (void) ztest_snapshot_destroy(zd->zd_name, id);
 (void) ztest_snapshot_create(zd->zd_name, id);
 rw_exit(&ztest_name_lock);
}
