
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_15__ {int zcb_removing_size; } ;
typedef TYPE_1__ zdb_cb_t ;
struct TYPE_16__ {size_t vdev_ms_count; TYPE_5__** vdev_ms; int * vdev_indirect_mapping; } ;
typedef TYPE_2__ vdev_t ;
typedef int vdev_indirect_mapping_t ;
typedef size_t uint64_t ;
struct TYPE_17__ {int svr_allocd_segs; int svr_vdev_id; } ;
typedef TYPE_3__ spa_vdev_removal_t ;
struct TYPE_18__ {TYPE_3__* spa_vdev_removal; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_19__ {scalar_t__ ms_start; TYPE_10__* ms_sm; } ;
typedef TYPE_5__ metaslab_t ;
struct TYPE_14__ {size_t sm_start; size_t sm_size; } ;


 int ASSERT0 (scalar_t__) ;
 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SM_ALLOC ;
 int VERIFY0 (int ) ;
 int claim_segment_cb ;
 int range_tree_clear (int ,size_t,size_t) ;
 scalar_t__ range_tree_space (int ) ;
 int range_tree_vacate (int ,int ,TYPE_2__*) ;
 int spa_config_enter (TYPE_4__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_4__*,int ,int ) ;
 int space_map_load (TYPE_10__*,int ,int ) ;
 scalar_t__ vdev_indirect_mapping_max_offset (int *) ;
 TYPE_2__* vdev_lookup_top (TYPE_4__*,int ) ;

__attribute__((used)) static void
zdb_claim_removing(spa_t *spa, zdb_cb_t *zcb)
{
 if (spa->spa_vdev_removal == ((void*)0))
  return;

 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);

 spa_vdev_removal_t *svr = spa->spa_vdev_removal;
 vdev_t *vd = vdev_lookup_top(spa, svr->svr_vdev_id);
 vdev_indirect_mapping_t *vim = vd->vdev_indirect_mapping;

 for (uint64_t msi = 0; msi < vd->vdev_ms_count; msi++) {
  metaslab_t *msp = vd->vdev_ms[msi];

  if (msp->ms_start >= vdev_indirect_mapping_max_offset(vim))
   break;

  ASSERT0(range_tree_space(svr->svr_allocd_segs));

  if (msp->ms_sm != ((void*)0)) {
   VERIFY0(space_map_load(msp->ms_sm,
       svr->svr_allocd_segs, SM_ALLOC));






   uint64_t vim_max_offset =
       vdev_indirect_mapping_max_offset(vim);
   uint64_t sm_end = msp->ms_sm->sm_start +
       msp->ms_sm->sm_size;
   if (sm_end > vim_max_offset)
    range_tree_clear(svr->svr_allocd_segs,
        vim_max_offset, sm_end - vim_max_offset);
  }

  zcb->zcb_removing_size +=
      range_tree_space(svr->svr_allocd_segs);
  range_tree_vacate(svr->svr_allocd_segs, claim_segment_cb, vd);
 }

 spa_config_exit(spa, SCL_CONFIG, FTAG);
}
