
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int space_map_phys_t ;
struct TYPE_6__ {scalar_t__ scip_prev_obsolete_sm_object; } ;
struct TYPE_7__ {int spa_meta_objset; TYPE_1__ spa_condensing_indirect_phys; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_8__ {int doi_bonus_size; } ;
typedef TYPE_3__ dmu_object_info_t ;


 int VERIFY0 (int ) ;
 int dmu_object_info (int ,scalar_t__,TYPE_3__*) ;

__attribute__((used)) static int
get_prev_obsolete_spacemap_refcount(spa_t *spa)
{
 uint64_t prev_obj =
     spa->spa_condensing_indirect_phys.scip_prev_obsolete_sm_object;
 if (prev_obj != 0) {
  dmu_object_info_t doi;
  VERIFY0(dmu_object_info(spa->spa_meta_objset, prev_obj, &doi));
  if (doi.doi_bonus_size == sizeof (space_map_phys_t)) {
   return (1);
  }
 }
 return (0);
}
