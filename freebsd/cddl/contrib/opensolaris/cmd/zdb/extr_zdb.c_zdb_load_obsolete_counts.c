
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vdev_id; int vdev_asize; int * vdev_obsolete_sm; TYPE_2__* vdev_spa; int * vdev_indirect_mapping; } ;
typedef TYPE_1__ vdev_t ;
typedef int vdev_indirect_mapping_t ;
typedef int uint32_t ;
typedef int space_map_t ;
struct TYPE_8__ {scalar_t__ scip_vdev; scalar_t__ scip_prev_obsolete_sm_object; } ;
struct TYPE_7__ {int spa_meta_objset; TYPE_3__ spa_condensing_indirect_phys; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ spa_condensing_indirect_phys_t ;


 int EQUIV (int,int ) ;
 int VERIFY0 (int ) ;
 int space_map_close (int *) ;
 int space_map_open (int **,int ,scalar_t__,int ,int ,int ) ;
 int space_map_update (int *) ;
 int * vdev_indirect_mapping_load_obsolete_counts (int *) ;
 int vdev_indirect_mapping_load_obsolete_spacemap (int *,int *,int *) ;
 scalar_t__ vdev_obsolete_sm_object (TYPE_1__*) ;

__attribute__((used)) static uint32_t *
zdb_load_obsolete_counts(vdev_t *vd)
{
 vdev_indirect_mapping_t *vim = vd->vdev_indirect_mapping;
 spa_t *spa = vd->vdev_spa;
 spa_condensing_indirect_phys_t *scip =
     &spa->spa_condensing_indirect_phys;
 uint32_t *counts;

 EQUIV(vdev_obsolete_sm_object(vd) != 0, vd->vdev_obsolete_sm != ((void*)0));
 counts = vdev_indirect_mapping_load_obsolete_counts(vim);
 if (vd->vdev_obsolete_sm != ((void*)0)) {
  vdev_indirect_mapping_load_obsolete_spacemap(vim, counts,
      vd->vdev_obsolete_sm);
 }
 if (scip->scip_vdev == vd->vdev_id &&
     scip->scip_prev_obsolete_sm_object != 0) {
  space_map_t *prev_obsolete_sm = ((void*)0);
  VERIFY0(space_map_open(&prev_obsolete_sm, spa->spa_meta_objset,
      scip->scip_prev_obsolete_sm_object, 0, vd->vdev_asize, 0));
  space_map_update(prev_obsolete_sm);
  vdev_indirect_mapping_load_obsolete_spacemap(vim, counts,
      prev_obsolete_sm);
  space_map_close(prev_obsolete_sm);
 }
 return (counts);
}
