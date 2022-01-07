
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zo_verbose; int zo_threads; scalar_t__ zo_datasets; int zo_pool; } ;


 int DS_FIND_CHILDREN ;
 int DS_FIND_SNAPSHOTS ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_objset_find (char*,int ,int *,int) ;
 int printf (char*,char*) ;
 int ztest_dataset_name (char*,int ,int) ;
 int ztest_dsl_dataset_cleanup (char*,int) ;
 int ztest_objset_destroy_cb ;
 TYPE_1__ ztest_opts ;

__attribute__((used)) static void
ztest_dataset_destroy(int d)
{
 char name[ZFS_MAX_DATASET_NAME_LEN];

 ztest_dataset_name(name, ztest_opts.zo_pool, d);

 if (ztest_opts.zo_verbose >= 3)
  (void) printf("Destroying %s to free up space\n", name);






 for (int t = d; t < ztest_opts.zo_threads;
     t += ztest_opts.zo_datasets) {
  ztest_dsl_dataset_cleanup(name, t);
 }

 (void) dmu_objset_find(name, ztest_objset_destroy_cb, ((void*)0),
     DS_FIND_SNAPSHOTS | DS_FIND_CHILDREN);
}
