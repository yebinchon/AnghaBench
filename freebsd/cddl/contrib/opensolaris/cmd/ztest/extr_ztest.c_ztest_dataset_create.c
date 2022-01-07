
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int zo_verbose; } ;


 int B_FALSE ;
 int DMU_OST_OTHER ;
 int ZFS_PROP_SYNC ;
 int ZFS_SYNC_ALWAYS ;
 int dmu_objset_create (char*,int ,int ,int ,int *) ;
 int printf (char*,char*) ;
 int ztest_dsl_prop_set_uint64 (char*,int ,int ,int ) ;
 int ztest_objset_create_cb ;
 TYPE_1__ ztest_opts ;
 int ztest_random (int) ;

__attribute__((used)) static int
ztest_dataset_create(char *dsname)
{
 uint64_t zilset = ztest_random(100);
 int err = dmu_objset_create(dsname, DMU_OST_OTHER, 0,
     ztest_objset_create_cb, ((void*)0));

 if (err || zilset < 80)
  return (err);

 if (ztest_opts.zo_verbose >= 6)
  (void) printf("Setting dataset %s to sync always\n", dsname);
 return (ztest_dsl_prop_set_uint64(dsname, ZFS_PROP_SYNC,
     ZFS_SYNC_ALWAYS, B_FALSE));
}
