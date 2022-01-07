
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ztest_ds_t ;
struct TYPE_7__ {scalar_t__ zgd_lr; scalar_t__ zgd_db; int * zgd_private; } ;
typedef TYPE_1__ zgd_t ;
typedef int uint64_t ;
struct TYPE_8__ {int rl_object; } ;
typedef TYPE_2__ rl_t ;


 int dmu_buf_rele (scalar_t__,TYPE_1__*) ;
 int umem_free (TYPE_1__*,int) ;
 int ztest_object_unlock (int *,int ) ;
 int ztest_range_unlock (TYPE_2__*) ;

__attribute__((used)) static void
ztest_get_done(zgd_t *zgd, int error)
{
 ztest_ds_t *zd = zgd->zgd_private;
 uint64_t object = ((rl_t *)zgd->zgd_lr)->rl_object;

 if (zgd->zgd_db)
  dmu_buf_rele(zgd->zgd_db, zgd);

 ztest_range_unlock((rl_t *)zgd->zgd_lr);
 ztest_object_unlock(zd, object);

 umem_free(zgd, sizeof (*zgd));
}
