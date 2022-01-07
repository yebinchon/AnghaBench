
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t spa_feature_t ;
typedef int objset_t ;
struct TYPE_5__ {int * ds_feature_inuse; } ;
struct TYPE_4__ {int fi_flags; } ;


 int ASSERT (int) ;
 int DMU_OST_ANY ;
 int FTAG ;
 size_t SPA_FEATURES ;
 int ZFEATURE_FLAG_PER_DATASET ;
 int close_objset (int *,int ) ;
 int * dataset_feature_count ;
 TYPE_2__* dmu_objset_ds (int *) ;
 scalar_t__ dsl_dataset_remap_deadlist_exists (TYPE_2__*) ;
 int dump_dir (int *) ;
 int fuid_table_destroy () ;
 int open_objset (char const*,int ,int ,int **) ;
 int remap_deadlist_count ;
 TYPE_1__* spa_feature_table ;

__attribute__((used)) static int
dump_one_dir(const char *dsname, void *arg)
{
 int error;
 objset_t *os;

 error = open_objset(dsname, DMU_OST_ANY, FTAG, &os);
 if (error != 0)
  return (0);

 for (spa_feature_t f = 0; f < SPA_FEATURES; f++) {
  if (!dmu_objset_ds(os)->ds_feature_inuse[f])
   continue;
  ASSERT(spa_feature_table[f].fi_flags &
      ZFEATURE_FLAG_PER_DATASET);
  dataset_feature_count[f]++;
 }

 if (dsl_dataset_remap_deadlist_exists(dmu_objset_ds(os))) {
  remap_deadlist_count++;
 }

 dump_dir(os);
 close_objset(os, FTAG);
 fuid_table_destroy();
 return (0);
}
