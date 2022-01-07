
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zd_name; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int uint64_t ;


 int ASSERT0 (int) ;
 int ENOSPC ;
 int RW_READER ;
 int dmu_objset_remap_indirects (int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int ztest_name_lock ;

void
ztest_remap_blocks(ztest_ds_t *zd, uint64_t id)
{
 rw_enter(&ztest_name_lock, RW_READER);

 int error = dmu_objset_remap_indirects(zd->zd_name);
 if (error == ENOSPC)
  error = 0;
 ASSERT0(error);

 rw_exit(&ztest_name_lock);
}
