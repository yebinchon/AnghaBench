#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ zs_guid; } ;
typedef  TYPE_1__ ztest_shared_t ;
struct TYPE_17__ {scalar_t__ od_object; scalar_t__ od_blocksize; } ;
typedef  TYPE_2__ ztest_od_t ;
struct TYPE_18__ {int /*<<< orphan*/  zd_name; int /*<<< orphan*/ * zd_os; } ;
typedef  TYPE_3__ ztest_ds_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  od ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_19__ {scalar_t__ dds_guid; } ;
typedef  TYPE_4__ dmu_objset_stats_t ;
struct TYPE_20__ {scalar_t__ db_offset; scalar_t__ db_size; int /*<<< orphan*/  db_data; } ;
typedef  TYPE_5__ dmu_buf_t ;
struct TYPE_21__ {int /*<<< orphan*/ * db_blkptr; } ;
typedef  TYPE_6__ dmu_buf_impl_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OT_UINT64_OTHER ; 
 int /*<<< orphan*/  DMU_READ_NO_PREFETCH ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  ZFS_PROP_COPIES ; 
 int /*<<< orphan*/  ZFS_PROP_DEDUP ; 
 int ZIO_DEDUPDITTO_MIN ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_INDUCE_DAMAGE ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_WRITE ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,TYPE_5__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,long long,long long,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 scalar_t__ FUNC26 (TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC30 () ; 
 TYPE_1__* ztest_shared ; 
 int /*<<< orphan*/ * ztest_spa ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC32(ztest_ds_t *zd, uint64_t id)
{
	ztest_shared_t *zs = ztest_shared;
	spa_t *spa = ztest_spa;
	objset_t *os = zd->zd_os;
	ztest_od_t od[1];
	uint64_t object, blocksize, txg, pattern, psize;
	enum zio_checksum checksum = FUNC20(spa);
	dmu_buf_t *db;
	dmu_tx_t *tx;
	abd_t *abd;
	blkptr_t blk;
	int copies = 2 * ZIO_DEDUPDITTO_MIN;

	blocksize = FUNC30();
	blocksize = FUNC2(blocksize, 2048);	/* because we write so many */

	FUNC27(&od[0], id, FTAG, 0, DMU_OT_UINT64_OTHER, blocksize,
	    0, 0);

	if (FUNC26(zd, od, sizeof (od), B_FALSE) != 0)
		return;

	/*
	 * Take the name lock as writer to prevent anyone else from changing
	 * the pool and dataset properies we need to maintain during this test.
	 */
	FUNC18(&ztest_name_lock, RW_WRITER);

	if (FUNC25(zd->zd_name, ZFS_PROP_DEDUP, checksum,
	    B_FALSE) != 0 ||
	    FUNC25(zd->zd_name, ZFS_PROP_COPIES, 1,
	    B_FALSE) != 0) {
		FUNC19(&ztest_name_lock);
		return;
	}

	dmu_objset_stats_t dds;
	FUNC15(FUNC11(os), FTAG);
	FUNC10(os, &dds);
	FUNC16(FUNC11(os), FTAG);

	object = od[0].od_object;
	blocksize = od[0].od_blocksize;
	pattern = zs->zs_guid ^ dds.dds_guid;

	FUNC0(object != 0);

	tx = FUNC13(os);
	FUNC14(tx, object, 0, copies * blocksize);
	txg = FUNC31(tx, TXG_WAIT, FTAG);
	if (txg == 0) {
		FUNC19(&ztest_name_lock);
		return;
	}

	/*
	 * Write all the copies of our block.
	 */
	for (int i = 0; i < copies; i++) {
		uint64_t offset = i * blocksize;
		int error = FUNC7(os, object, offset, FTAG, &db,
		    DMU_READ_NO_PREFETCH);
		if (error != 0) {
			FUNC17(B_FALSE, "dmu_buf_hold(%p, %llu, %llu) = %u",
			    os, (long long)object, (long long) offset, error);
		}
		FUNC0(db->db_offset == offset);
		FUNC0(db->db_size == blocksize);
		FUNC0(FUNC28(db->db_data, db->db_size, pattern) ||
		    FUNC28(db->db_data, db->db_size, 0ULL));
		FUNC9(db, tx);
		FUNC29(db->db_data, db->db_size, pattern);
		FUNC8(db, FTAG);
	}

	FUNC12(tx);
	FUNC22(FUNC21(spa), txg);

	/*
	 * Find out what block we got.
	 */
	FUNC3(FUNC7(os, object, 0, FTAG, &db,
	    DMU_READ_NO_PREFETCH));
	blk = *((dmu_buf_impl_t *)db)->db_blkptr;
	FUNC8(db, FTAG);

	/*
	 * Damage the block.  Dedup-ditto will save us when we read it later.
	 */
	psize = FUNC1(&blk);
	abd = FUNC4(psize, B_TRUE);
	FUNC29(FUNC6(abd), psize, ~pattern);

	(void) FUNC24(FUNC23(NULL, spa, 0, &blk,
	    abd, psize, NULL, NULL, ZIO_PRIORITY_SYNC_WRITE,
	    ZIO_FLAG_CANFAIL | ZIO_FLAG_INDUCE_DAMAGE, NULL));

	FUNC5(abd);

	FUNC19(&ztest_name_lock);
}