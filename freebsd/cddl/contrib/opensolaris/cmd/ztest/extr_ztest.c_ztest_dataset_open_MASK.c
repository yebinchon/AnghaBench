#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* zd_name; TYPE_3__* zd_zilog; } ;
typedef  TYPE_2__ ztest_ds_t ;
struct TYPE_15__ {scalar_t__ zl_replaying_seq; scalar_t__ zl_parse_lr_count; scalar_t__ zl_parse_blk_count; TYPE_1__* zl_header; } ;
typedef  TYPE_3__ zilog_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_17__ {int zo_verbose; int /*<<< orphan*/  zo_pool; } ;
struct TYPE_16__ {scalar_t__ zd_seq; } ;
struct TYPE_13__ {scalar_t__ zh_claim_lr_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_OST_OTHER ; 
 int EEXIST ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 TYPE_5__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* ztest_ds ; 
 int /*<<< orphan*/  ztest_get_data ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 TYPE_6__ ztest_opts ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ztest_replay_vector ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(int d)
{
	ztest_ds_t *zd = &ztest_ds[d];
	uint64_t committed_seq = FUNC2(d)->zd_seq;
	objset_t *os;
	zilog_t *zilog;
	char name[ZFS_MAX_DATASET_NAME_LEN];
	int error;

	FUNC12(name, ztest_opts.zo_pool, d);

	FUNC6(&ztest_name_lock, RW_READER);

	error = FUNC10(name);
	if (error == ENOSPC) {
		FUNC7(&ztest_name_lock);
		FUNC13(FTAG);
		return (error);
	}
	FUNC0(error == 0 || error == EEXIST);

	FUNC1(FUNC3(name, DMU_OST_OTHER, B_FALSE, zd, &os));
	FUNC7(&ztest_name_lock);

	FUNC14(zd, FUNC2(d), os);

	zilog = zd->zd_zilog;

	if (zilog->zl_header->zh_claim_lr_seq != 0 &&
	    zilog->zl_header->zh_claim_lr_seq < committed_seq)
		FUNC4(0, "missing log records: claimed %llu < committed %llu",
		    zilog->zl_header->zh_claim_lr_seq, committed_seq);

	FUNC11(zd);

	FUNC9(os, zd, ztest_replay_vector);

	FUNC11(zd);

	if (ztest_opts.zo_verbose >= 6)
		(void) FUNC5("%s replay %llu blocks, %llu records, seq %llu\n",
		    zd->zd_name,
		    (u_longlong_t)zilog->zl_parse_blk_count,
		    (u_longlong_t)zilog->zl_parse_lr_count,
		    (u_longlong_t)zilog->zl_replaying_seq);

	zilog = FUNC8(os, ztest_get_data);

	if (zilog->zl_replaying_seq != 0 &&
	    zilog->zl_replaying_seq < committed_seq)
		FUNC4(0, "missing log records: replayed %llu < committed %llu",
		    zilog->zl_replaying_seq, committed_seq);

	return (0);
}