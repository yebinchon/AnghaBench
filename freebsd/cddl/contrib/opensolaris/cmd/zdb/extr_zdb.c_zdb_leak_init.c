
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int zcb_checkpoint_size; int zcb_vd_obsolete_counts; TYPE_5__* zcb_spa; } ;
typedef TYPE_3__ zdb_cb_t ;
struct TYPE_24__ {int vdev_children; } ;
typedef TYPE_4__ vdev_t ;
typedef int uint32_t ;
struct TYPE_25__ {TYPE_2__* spa_log_class; TYPE_1__* spa_normal_class; TYPE_4__* spa_root_vdev; TYPE_6__* spa_dsl_pool; } ;
typedef TYPE_5__ spa_t ;
struct TYPE_26__ {int dp_obsolete_bpobj; } ;
typedef TYPE_6__ dsl_pool_t ;
struct TYPE_22__ {int * mc_ops; } ;
struct TYPE_21__ {int * mc_ops; } ;


 int ASSERT (int ) ;
 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SM_ALLOC ;
 int SPA_FEATURE_DEVICE_REMOVAL ;
 int UMEM_NOFAIL ;
 scalar_t__ bpobj_is_open (int *) ;
 int bpobj_iterate_nofree (int *,int ,TYPE_3__*,int *) ;
 int * dump_opt ;
 int fprintf (int ,char*) ;
 int increment_indirect_mapping_cb ;
 int load_concrete_ms_allocatable_trees (TYPE_5__*,int ) ;
 int spa_config_enter (TYPE_5__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_5__*,int ,int ) ;
 int spa_feature_is_enabled (TYPE_5__*,int ) ;
 scalar_t__ spa_get_checkpoint_space (TYPE_5__*) ;
 int stderr ;
 int umem_zalloc (int,int ) ;
 int zdb_ddt_leak_init (TYPE_5__*,TYPE_3__*) ;
 int zdb_leak_init_exclude_checkpoint (TYPE_5__*,TYPE_3__*) ;
 int zdb_leak_init_prepare_indirect_vdevs (TYPE_5__*,TYPE_3__*) ;
 int zdb_metaslab_ops ;

__attribute__((used)) static void
zdb_leak_init(spa_t *spa, zdb_cb_t *zcb)
{
 zcb->zcb_spa = spa;

 if (!dump_opt['L']) {
  dsl_pool_t *dp = spa->spa_dsl_pool;
  vdev_t *rvd = spa->spa_root_vdev;






  spa->spa_normal_class->mc_ops = &zdb_metaslab_ops;
  spa->spa_log_class->mc_ops = &zdb_metaslab_ops;

  zcb->zcb_vd_obsolete_counts =
      umem_zalloc(rvd->vdev_children * sizeof (uint32_t *),
      UMEM_NOFAIL);







  zdb_leak_init_prepare_indirect_vdevs(spa, zcb);
  load_concrete_ms_allocatable_trees(spa, SM_ALLOC);
  zdb_leak_init_exclude_checkpoint(spa, zcb);


  (void) fprintf(stderr, "\n");

  if (bpobj_is_open(&dp->dp_obsolete_bpobj)) {
   ASSERT(spa_feature_is_enabled(spa,
       SPA_FEATURE_DEVICE_REMOVAL));
   (void) bpobj_iterate_nofree(&dp->dp_obsolete_bpobj,
       increment_indirect_mapping_cb, zcb, ((void*)0));
  }
 } else {




  zcb->zcb_checkpoint_size += spa_get_checkpoint_space(spa);
 }

 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
 zdb_ddt_leak_init(spa, zcb);
 spa_config_exit(spa, SCL_CONFIG, FTAG);
}
