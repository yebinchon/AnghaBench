
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zd_seq; } ;
typedef TYPE_1__ ztest_shared_ds_t ;
struct TYPE_6__ {int * zd_range_lock; int * zd_object_lock; int zd_dirobj_lock; int zd_zilog_lock; TYPE_1__* zd_shared; int zd_name; int zd_zilog; int * zd_os; } ;
typedef TYPE_2__ ztest_ds_t ;
typedef int objset_t ;


 int USYNC_THREAD ;
 int ZTEST_OBJECT_LOCKS ;
 int ZTEST_RANGE_LOCKS ;
 int dmu_objset_name (int *,int ) ;
 int dmu_objset_zil (int *) ;
 int mutex_init (int *,int *,int ,int *) ;
 int rw_init (int *,int *,int ,int *) ;
 int ztest_rll_init (int *) ;

__attribute__((used)) static void
ztest_zd_init(ztest_ds_t *zd, ztest_shared_ds_t *szd, objset_t *os)
{
 zd->zd_os = os;
 zd->zd_zilog = dmu_objset_zil(os);
 zd->zd_shared = szd;
 dmu_objset_name(os, zd->zd_name);

 if (zd->zd_shared != ((void*)0))
  zd->zd_shared->zd_seq = 0;

 rw_init(&zd->zd_zilog_lock, ((void*)0), USYNC_THREAD, ((void*)0));
 mutex_init(&zd->zd_dirobj_lock, ((void*)0), USYNC_THREAD, ((void*)0));

 for (int l = 0; l < ZTEST_OBJECT_LOCKS; l++)
  ztest_rll_init(&zd->zd_object_lock[l]);

 for (int l = 0; l < ZTEST_RANGE_LOCKS; l++)
  ztest_rll_init(&zd->zd_range_lock[l]);
}
