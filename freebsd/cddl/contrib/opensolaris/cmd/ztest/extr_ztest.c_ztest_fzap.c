
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ od_object; } ;
typedef TYPE_1__ ztest_od_t ;
struct TYPE_8__ {int * zd_os; } ;
typedef TYPE_2__ ztest_ds_t ;
typedef scalar_t__ uint64_t ;
typedef int od ;
typedef int objset_t ;
typedef int name ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int B_TRUE ;
 int DMU_OT_ZAP_OTHER ;
 int EEXIST ;
 int FTAG ;
 int TXG_MIGHTWAIT ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_zap (int *,scalar_t__,int ,char*) ;
 int snprintf (char*,int,char*,scalar_t__,scalar_t__) ;
 int zap_add (int *,scalar_t__,char*,int,int,scalar_t__*,int *) ;
 scalar_t__ ztest_object_init (TYPE_2__*,TYPE_1__*,int,int) ;
 int ztest_od_init (TYPE_1__*,scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int ztest_random (int) ;
 scalar_t__ ztest_tx_assign (int *,int ,int ) ;

void
ztest_fzap(ztest_ds_t *zd, uint64_t id)
{
 objset_t *os = zd->zd_os;
 ztest_od_t od[1];
 uint64_t object, txg;

 ztest_od_init(&od[0], id, FTAG, 0, DMU_OT_ZAP_OTHER, 0, 0, 0);

 if (ztest_object_init(zd, od, sizeof (od), !ztest_random(2)) != 0)
  return;

 object = od[0].od_object;






 for (int i = 0; i < 2050; i++) {
  char name[ZFS_MAX_DATASET_NAME_LEN];
  uint64_t value = i;
  dmu_tx_t *tx;
  int error;

  (void) snprintf(name, sizeof (name), "fzap-%llu-%llu",
      id, value);

  tx = dmu_tx_create(os);
  dmu_tx_hold_zap(tx, object, B_TRUE, name);
  txg = ztest_tx_assign(tx, TXG_MIGHTWAIT, FTAG);
  if (txg == 0)
   return;
  error = zap_add(os, object, name, sizeof (uint64_t), 1,
      &value, tx);
  ASSERT(error == 0 || error == EEXIST);
  dmu_tx_commit(tx);
 }
}
