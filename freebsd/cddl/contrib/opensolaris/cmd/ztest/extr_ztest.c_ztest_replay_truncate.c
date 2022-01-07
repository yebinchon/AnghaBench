
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * zd_os; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef scalar_t__ uint64_t ;
typedef int rl_t ;
typedef int objset_t ;
struct TYPE_10__ {int lr_foid; int lr_length; int lr_offset; } ;
typedef TYPE_2__ lr_truncate_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ boolean_t ;


 int ENOSPC ;
 int FTAG ;
 int RL_READER ;
 int RL_WRITER ;
 int TXG_WAIT ;
 int VERIFY (int) ;
 int byteswap_uint64_array (TYPE_2__*,int) ;
 scalar_t__ dmu_free_range (int *,int ,int ,int ,int *) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_free (int *,int ,int ,int ) ;
 int ztest_log_truncate (TYPE_1__*,int *,TYPE_2__*) ;
 int ztest_object_lock (TYPE_1__*,int ,int ) ;
 int ztest_object_unlock (TYPE_1__*,int ) ;
 int * ztest_range_lock (TYPE_1__*,int ,int ,int ,int ) ;
 int ztest_range_unlock (int *) ;
 scalar_t__ ztest_tx_assign (int *,int ,int ) ;

__attribute__((used)) static int
ztest_replay_truncate(void *arg1, void *arg2, boolean_t byteswap)
{
 ztest_ds_t *zd = arg1;
 lr_truncate_t *lr = arg2;
 objset_t *os = zd->zd_os;
 dmu_tx_t *tx;
 uint64_t txg;
 rl_t *rl;

 if (byteswap)
  byteswap_uint64_array(lr, sizeof (*lr));

 ztest_object_lock(zd, lr->lr_foid, RL_READER);
 rl = ztest_range_lock(zd, lr->lr_foid, lr->lr_offset, lr->lr_length,
     RL_WRITER);

 tx = dmu_tx_create(os);

 dmu_tx_hold_free(tx, lr->lr_foid, lr->lr_offset, lr->lr_length);

 txg = ztest_tx_assign(tx, TXG_WAIT, FTAG);
 if (txg == 0) {
  ztest_range_unlock(rl);
  ztest_object_unlock(zd, lr->lr_foid);
  return (ENOSPC);
 }

 VERIFY(dmu_free_range(os, lr->lr_foid, lr->lr_offset,
     lr->lr_length, tx) == 0);

 (void) ztest_log_truncate(zd, tx, lr);

 dmu_tx_commit(tx);

 ztest_range_unlock(rl);
 ztest_object_unlock(zd, lr->lr_foid);

 return (0);
}
