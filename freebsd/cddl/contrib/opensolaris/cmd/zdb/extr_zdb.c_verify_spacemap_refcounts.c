
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;
typedef int longlong_t ;


 size_t SPA_FEATURE_SPACEMAP_HISTOGRAM ;
 int feature_get_refcount (TYPE_1__*,int *,scalar_t__*) ;
 scalar_t__ get_checkpoint_refcount (int ) ;
 scalar_t__ get_dtl_refcount (int ) ;
 scalar_t__ get_metaslab_refcount (int ) ;
 scalar_t__ get_obsolete_refcount (int ) ;
 scalar_t__ get_prev_obsolete_spacemap_refcount (TYPE_1__*) ;
 int printf (char*,int ,int ) ;
 int * spa_feature_table ;

__attribute__((used)) static int
verify_spacemap_refcounts(spa_t *spa)
{
 uint64_t expected_refcount = 0;
 uint64_t actual_refcount;

 (void) feature_get_refcount(spa,
     &spa_feature_table[SPA_FEATURE_SPACEMAP_HISTOGRAM],
     &expected_refcount);
 actual_refcount = get_dtl_refcount(spa->spa_root_vdev);
 actual_refcount += get_metaslab_refcount(spa->spa_root_vdev);
 actual_refcount += get_obsolete_refcount(spa->spa_root_vdev);
 actual_refcount += get_prev_obsolete_spacemap_refcount(spa);
 actual_refcount += get_checkpoint_refcount(spa->spa_root_vdev);

 if (expected_refcount != actual_refcount) {
  (void) printf("space map refcount mismatch: expected %lld != "
      "actual %lld\n",
      (longlong_t)expected_refcount,
      (longlong_t)actual_refcount);
  return (2);
 }
 return (0);
}
