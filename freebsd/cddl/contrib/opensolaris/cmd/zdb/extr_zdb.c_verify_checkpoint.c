
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {scalar_t__ ub_checkpoint_txg; } ;
typedef TYPE_1__ uberblock_t ;
struct TYPE_10__ {int spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;


 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_ZPOOL_CHECKPOINT ;
 int ENOENT ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 int dump_leftover_checkpoint_blocks (TYPE_2__*) ;
 int * dump_opt ;
 int dump_uberblock (TYPE_1__*,char*,char*) ;
 int printf (char*,...) ;
 int spa_feature_is_active (TYPE_2__*,int ) ;
 int verify_checkpoint_blocks (TYPE_2__*) ;
 int zap_lookup (int ,int ,int ,int,int,TYPE_1__*) ;

__attribute__((used)) static int
verify_checkpoint(spa_t *spa)
{
 uberblock_t checkpoint;
 int error;

 if (!spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT))
  return (0);

 error = zap_lookup(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_ZPOOL_CHECKPOINT, sizeof (uint64_t),
     sizeof (uberblock_t) / sizeof (uint64_t), &checkpoint);

 if (error == ENOENT && !dump_opt['L']) {





  (void) printf("\nPartially discarded checkpoint "
      "state found:\n");
  dump_leftover_checkpoint_blocks(spa);
  return (0);
 } else if (error != 0) {
  (void) printf("lookup error %d when looking for "
      "checkpointed uberblock in MOS\n", error);
  return (error);
 }
 dump_uberblock(&checkpoint, "\nCheckpointed uberblock found:\n", "\n");

 if (checkpoint.ub_checkpoint_txg == 0) {
  (void) printf("\nub_checkpoint_txg not set in checkpointed "
      "uberblock\n");
  error = 3;
 }

 if (error == 0 && !dump_opt['L'])
  verify_checkpoint_blocks(spa);

 return (error);
}
