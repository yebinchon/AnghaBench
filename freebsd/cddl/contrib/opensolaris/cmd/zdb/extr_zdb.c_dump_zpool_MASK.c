#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_26__ {int /*<<< orphan*/  spa_root_vdev; int /*<<< orphan*/  spa_meta_objset; int /*<<< orphan*/  spa_deferred_bpobj; TYPE_2__* spa_dsl_pool; int /*<<< orphan*/  spa_uberblock; int /*<<< orphan*/  spa_config; } ;
typedef  TYPE_1__ spa_t ;
typedef  size_t spa_feature_t ;
typedef  int /*<<< orphan*/  longlong_t ;
struct TYPE_27__ {int /*<<< orphan*/  dp_bptree_obj; int /*<<< orphan*/  dp_obsolete_bpobj; int /*<<< orphan*/  dp_free_bpobj; int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_25__ {int fi_flags; char* fi_uname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int DS_FIND_CHILDREN ; 
 int DS_FIND_SNAPSHOTS ; 
 size_t SPA_FEATURES ; 
 int /*<<< orphan*/  SPA_FEATURE_ASYNC_DESTROY ; 
 int /*<<< orphan*/  SPA_FEATURE_DEVICE_REMOVAL ; 
 scalar_t__ SPA_VERSION_DEADLISTS ; 
 int ZFEATURE_FLAG_PER_DATASET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__* dataset_feature_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dump_one_dir ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_10__*,scalar_t__*) ; 
 int /*<<< orphan*/  mos_refd_objs ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 scalar_t__ FUNC24 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_10__* spa_feature_table ; 
 TYPE_2__* FUNC26 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 scalar_t__ FUNC28 (TYPE_1__*) ; 
 int FUNC29 (TYPE_1__*) ; 
 int FUNC30 (TYPE_1__*) ; 
 int FUNC31 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC32(spa_t *spa)
{
	dsl_pool_t *dp = FUNC26(spa);
	int rc = 0;

	if (dump_opt['S']) {
		FUNC17(spa);
		return;
	}

	if (!dump_opt['e'] && dump_opt['C'] > 1) {
		(void) FUNC21("\nCached configuration:\n");
		FUNC16(spa->spa_config, 8);
	}

	if (dump_opt['C'])
		FUNC7(spa);

	if (dump_opt['u'])
		FUNC18(&spa->spa_uberblock, "\nUberblock:\n", "\n");

	if (dump_opt['D'])
		FUNC4(spa);

	if (dump_opt['d'] > 2 || dump_opt['m'])
		FUNC14(spa);
	if (dump_opt['M'])
		FUNC13(spa);

	if (dump_opt['d'] || dump_opt['i']) {
		mos_refd_objs = FUNC22(NULL, NULL);
		FUNC9(dp->dp_meta_objset);

		if (dump_opt['d'] >= 3) {
			dsl_pool_t *dp = spa->spa_dsl_pool;
			FUNC11(&spa->spa_deferred_bpobj,
			    "Deferred frees", 0);
			if (FUNC28(spa) >= SPA_VERSION_DEADLISTS) {
				FUNC11(&dp->dp_free_bpobj,
				    "Pool snapshot frees", 0);
			}
			if (FUNC2(&dp->dp_obsolete_bpobj)) {
				FUNC0(FUNC25(spa,
				    SPA_FEATURE_DEVICE_REMOVAL));
				FUNC11(&dp->dp_obsolete_bpobj,
				    "Pool obsolete blocks", 0);
			}

			if (FUNC24(spa,
			    SPA_FEATURE_ASYNC_DESTROY)) {
				FUNC6(spa->spa_meta_objset,
				    dp->dp_bptree_obj,
				    "Pool dataset frees");
			}
			FUNC10(spa->spa_root_vdev, 0);
		}
		(void) FUNC3(FUNC27(spa), dump_one_dir,
		    NULL, DS_FIND_SNAPSHOTS | DS_FIND_CHILDREN);

		if (rc == 0 && !dump_opt['L'])
			rc = FUNC15(spa);

		for (spa_feature_t f = 0; f < SPA_FEATURES; f++) {
			uint64_t refcount;

			if (!(spa_feature_table[f].fi_flags &
			    ZFEATURE_FLAG_PER_DATASET)) {
				FUNC1(dataset_feature_count[f]);
				continue;
			}
			(void) FUNC20(spa,
			    &spa_feature_table[f], &refcount);
			if (dataset_feature_count[f] != refcount) {
				(void) FUNC21("%s feature refcount mismatch: "
				    "%lld datasets != %lld refcount\n",
				    spa_feature_table[f].fi_uname,
				    (longlong_t)dataset_feature_count[f],
				    (longlong_t)refcount);
				rc = 2;
			} else {
				(void) FUNC21("Verified %s feature refcount "
				    "of %llu is correct\n",
				    spa_feature_table[f].fi_uname,
				    (longlong_t)refcount);
			}
		}

		if (rc == 0) {
			rc = FUNC30(spa);
		}
	}

	if (rc == 0 && (dump_opt['b'] || dump_opt['c']))
		rc = FUNC5(spa);

	if (rc == 0)
		rc = FUNC31(spa);

	if (dump_opt['s'])
		FUNC23(spa);

	if (dump_opt['h'])
		FUNC12(spa);

	if (rc == 0)
		rc = FUNC29(spa);

	if (rc != 0) {
		FUNC8();
		FUNC19(rc);
	}
}