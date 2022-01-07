
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zcb_checkpoint_size; } ;
typedef TYPE_1__ zdb_cb_t ;
struct TYPE_8__ {int vdev_ashift; int vdev_asize; int vdev_top_zap; int * vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
typedef int space_map_t ;
typedef int spa_t ;
struct TYPE_9__ {scalar_t__ cseea_checkpoint_size; TYPE_2__* cseea_vd; } ;
typedef TYPE_3__ checkpoint_sm_exclude_entry_arg_t ;


 int VDEV_TOP_ZAP_POOL_CHECKPOINT_SM ;
 int VERIFY0 (int ) ;
 int checkpoint_sm_exclude_entry_cb ;
 int spa_meta_objset (int *) ;
 int space_map_close (int *) ;
 int space_map_iterate (int *,int ,TYPE_3__*) ;
 int space_map_open (int **,int ,int ,int ,int ,int ) ;
 int space_map_update (int *) ;
 scalar_t__ zap_contains (int ,int ,int ) ;
 int zap_lookup (int ,int ,int ,int,int,int *) ;

__attribute__((used)) static void
zdb_leak_init_vdev_exclude_checkpoint(vdev_t *vd, zdb_cb_t *zcb)
{
 spa_t *spa = vd->vdev_spa;
 space_map_t *checkpoint_sm = ((void*)0);
 uint64_t checkpoint_sm_obj;





 if (vd->vdev_top_zap == 0)
  return;
 if (zap_contains(spa_meta_objset(spa), vd->vdev_top_zap,
     VDEV_TOP_ZAP_POOL_CHECKPOINT_SM) != 0)
  return;

 VERIFY0(zap_lookup(spa_meta_objset(spa), vd->vdev_top_zap,
     VDEV_TOP_ZAP_POOL_CHECKPOINT_SM, sizeof (uint64_t), 1,
     &checkpoint_sm_obj));

 checkpoint_sm_exclude_entry_arg_t cseea;
 cseea.cseea_vd = vd;
 cseea.cseea_checkpoint_size = 0;

 VERIFY0(space_map_open(&checkpoint_sm, spa_meta_objset(spa),
     checkpoint_sm_obj, 0, vd->vdev_asize, vd->vdev_ashift));
 space_map_update(checkpoint_sm);

 VERIFY0(space_map_iterate(checkpoint_sm,
     checkpoint_sm_exclude_entry_cb, &cseea));
 space_map_close(checkpoint_sm);

 zcb->zcb_checkpoint_size += cseea.cseea_checkpoint_size;
}
