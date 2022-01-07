
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ztest_ds_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_2__ {int zo_verbose; } ;


 int RW_READER ;
 int VERIFY0 (int ) ;
 scalar_t__ ZIO_DEDUPDITTO_MIN ;
 int ZPOOL_PROP_DEDUPDITTO ;
 int dump_nvlist (int *,int) ;
 int nvlist_free (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_prop_get (int ,int **) ;
 int ztest_name_lock ;
 TYPE_1__ ztest_opts ;
 scalar_t__ ztest_random (scalar_t__) ;
 int ztest_spa ;
 int ztest_spa_prop_set_uint64 (int ,scalar_t__) ;

void
ztest_spa_prop_get_set(ztest_ds_t *zd, uint64_t id)
{
 nvlist_t *props = ((void*)0);

 rw_enter(&ztest_name_lock, RW_READER);

 (void) ztest_spa_prop_set_uint64(ZPOOL_PROP_DEDUPDITTO,
     ZIO_DEDUPDITTO_MIN + ztest_random(ZIO_DEDUPDITTO_MIN));

 VERIFY0(spa_prop_get(ztest_spa, &props));

 if (ztest_opts.zo_verbose >= 6)
  dump_nvlist(props, 4);

 nvlist_free(props);

 rw_exit(&ztest_name_lock);
}
