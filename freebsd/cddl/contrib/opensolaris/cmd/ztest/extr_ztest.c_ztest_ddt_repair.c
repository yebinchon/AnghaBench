
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ zs_guid; } ;
typedef TYPE_1__ ztest_shared_t ;
struct TYPE_17__ {scalar_t__ od_object; scalar_t__ od_blocksize; } ;
typedef TYPE_2__ ztest_od_t ;
struct TYPE_18__ {int zd_name; int * zd_os; } ;
typedef TYPE_3__ ztest_ds_t ;
typedef scalar_t__ uint64_t ;
typedef int spa_t ;
typedef int od ;
typedef int objset_t ;
typedef enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
typedef int dmu_tx_t ;
struct TYPE_19__ {scalar_t__ dds_guid; } ;
typedef TYPE_4__ dmu_objset_stats_t ;
struct TYPE_20__ {scalar_t__ db_offset; scalar_t__ db_size; int db_data; } ;
typedef TYPE_5__ dmu_buf_t ;
struct TYPE_21__ {int * db_blkptr; } ;
typedef TYPE_6__ dmu_buf_impl_t ;
typedef int blkptr_t ;
typedef int abd_t ;


 int ASSERT (int) ;
 scalar_t__ BP_GET_PSIZE (int *) ;
 int B_FALSE ;
 int B_TRUE ;
 int DMU_OT_UINT64_OTHER ;
 int DMU_READ_NO_PREFETCH ;
 int FTAG ;
 scalar_t__ MIN (scalar_t__,int) ;
 int RW_WRITER ;
 int TXG_WAIT ;
 int VERIFY0 (int) ;
 int ZFS_PROP_COPIES ;
 int ZFS_PROP_DEDUP ;
 int ZIO_DEDUPDITTO_MIN ;
 int ZIO_FLAG_CANFAIL ;
 int ZIO_FLAG_INDUCE_DAMAGE ;
 int ZIO_PRIORITY_SYNC_WRITE ;
 int * abd_alloc_linear (scalar_t__,int ) ;
 int abd_free (int *) ;
 int abd_to_buf (int *) ;
 int dmu_buf_hold (int *,scalar_t__,scalar_t__,int ,TYPE_5__**,int ) ;
 int dmu_buf_rele (TYPE_5__*,int ) ;
 int dmu_buf_will_fill (TYPE_5__*,int *) ;
 int dmu_objset_fast_stat (int *,TYPE_4__*) ;
 int dmu_objset_pool (int *) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int *) ;
 int dmu_tx_hold_write (int *,scalar_t__,int ,int) ;
 int dsl_pool_config_enter (int ,int ) ;
 int dsl_pool_config_exit (int ,int ) ;
 int fatal (int ,char*,int *,long long,long long,int) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_dedup_checksum (int *) ;
 int spa_get_dsl (int *) ;
 int txg_wait_synced (int ,scalar_t__) ;
 int zio_rewrite (int *,int *,int ,int *,int *,scalar_t__,int *,int *,int ,int,int *) ;
 int zio_wait (int ) ;
 scalar_t__ ztest_dsl_prop_set_uint64 (int ,int ,int,int ) ;
 int ztest_name_lock ;
 scalar_t__ ztest_object_init (TYPE_3__*,TYPE_2__*,int,int ) ;
 int ztest_od_init (TYPE_2__*,scalar_t__,int ,int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ ztest_pattern_match (int ,scalar_t__,unsigned long long) ;
 int ztest_pattern_set (int ,scalar_t__,scalar_t__) ;
 scalar_t__ ztest_random_blocksize () ;
 TYPE_1__* ztest_shared ;
 int * ztest_spa ;
 scalar_t__ ztest_tx_assign (int *,int ,int ) ;

void
ztest_ddt_repair(ztest_ds_t *zd, uint64_t id)
{
 ztest_shared_t *zs = ztest_shared;
 spa_t *spa = ztest_spa;
 objset_t *os = zd->zd_os;
 ztest_od_t od[1];
 uint64_t object, blocksize, txg, pattern, psize;
 enum zio_checksum checksum = spa_dedup_checksum(spa);
 dmu_buf_t *db;
 dmu_tx_t *tx;
 abd_t *abd;
 blkptr_t blk;
 int copies = 2 * ZIO_DEDUPDITTO_MIN;

 blocksize = ztest_random_blocksize();
 blocksize = MIN(blocksize, 2048);

 ztest_od_init(&od[0], id, FTAG, 0, DMU_OT_UINT64_OTHER, blocksize,
     0, 0);

 if (ztest_object_init(zd, od, sizeof (od), B_FALSE) != 0)
  return;





 rw_enter(&ztest_name_lock, RW_WRITER);

 if (ztest_dsl_prop_set_uint64(zd->zd_name, ZFS_PROP_DEDUP, checksum,
     B_FALSE) != 0 ||
     ztest_dsl_prop_set_uint64(zd->zd_name, ZFS_PROP_COPIES, 1,
     B_FALSE) != 0) {
  rw_exit(&ztest_name_lock);
  return;
 }

 dmu_objset_stats_t dds;
 dsl_pool_config_enter(dmu_objset_pool(os), FTAG);
 dmu_objset_fast_stat(os, &dds);
 dsl_pool_config_exit(dmu_objset_pool(os), FTAG);

 object = od[0].od_object;
 blocksize = od[0].od_blocksize;
 pattern = zs->zs_guid ^ dds.dds_guid;

 ASSERT(object != 0);

 tx = dmu_tx_create(os);
 dmu_tx_hold_write(tx, object, 0, copies * blocksize);
 txg = ztest_tx_assign(tx, TXG_WAIT, FTAG);
 if (txg == 0) {
  rw_exit(&ztest_name_lock);
  return;
 }




 for (int i = 0; i < copies; i++) {
  uint64_t offset = i * blocksize;
  int error = dmu_buf_hold(os, object, offset, FTAG, &db,
      DMU_READ_NO_PREFETCH);
  if (error != 0) {
   fatal(B_FALSE, "dmu_buf_hold(%p, %llu, %llu) = %u",
       os, (long long)object, (long long) offset, error);
  }
  ASSERT(db->db_offset == offset);
  ASSERT(db->db_size == blocksize);
  ASSERT(ztest_pattern_match(db->db_data, db->db_size, pattern) ||
      ztest_pattern_match(db->db_data, db->db_size, 0ULL));
  dmu_buf_will_fill(db, tx);
  ztest_pattern_set(db->db_data, db->db_size, pattern);
  dmu_buf_rele(db, FTAG);
 }

 dmu_tx_commit(tx);
 txg_wait_synced(spa_get_dsl(spa), txg);




 VERIFY0(dmu_buf_hold(os, object, 0, FTAG, &db,
     DMU_READ_NO_PREFETCH));
 blk = *((dmu_buf_impl_t *)db)->db_blkptr;
 dmu_buf_rele(db, FTAG);




 psize = BP_GET_PSIZE(&blk);
 abd = abd_alloc_linear(psize, B_TRUE);
 ztest_pattern_set(abd_to_buf(abd), psize, ~pattern);

 (void) zio_wait(zio_rewrite(((void*)0), spa, 0, &blk,
     abd, psize, ((void*)0), ((void*)0), ZIO_PRIORITY_SYNC_WRITE,
     ZIO_FLAG_CANFAIL | ZIO_FLAG_INDUCE_DAMAGE, ((void*)0)));

 abd_free(abd);

 rw_exit(&ztest_name_lock);
}
