#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int zs_mirrors; } ;
typedef  TYPE_2__ ztest_shared_t ;
typedef  int /*<<< orphan*/  ztest_ds_t ;
struct TYPE_20__ {int vdev_children; size_t vdev_guid; TYPE_1__* vdev_top; int /*<<< orphan*/ * vdev_ops; int /*<<< orphan*/  vdev_path; struct TYPE_20__* vdev_parent; struct TYPE_20__** vdev_child; } ;
typedef  TYPE_3__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_22__ {int sav_count; TYPE_3__** sav_vdevs; } ;
struct TYPE_21__ {TYPE_3__* spa_root_vdev; TYPE_5__ spa_spares; } ;
typedef  TYPE_4__ spa_t ;
typedef  TYPE_5__ spa_aux_vdev_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  newpath ;
struct TYPE_23__ {size_t zo_raidz; int /*<<< orphan*/  zo_pool; int /*<<< orphan*/  zo_dir; } ;
struct TYPE_18__ {int vdev_islog; size_t vdev_ashift; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_FALSE ; 
 int B_TRUE ; 
 int EBUSY ; 
 int EDOM ; 
 int ENODEV ; 
 int ENOTSUP ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FTAG ; 
 size_t FUNC1 (int,int) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_ALL ; 
 int ZFS_ERR_CHECKPOINT_EXISTS ; 
 int ZFS_ERR_DISCARDING_CHECKPOINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,size_t,...) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*,size_t,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (TYPE_4__*,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*) ; 
 size_t FUNC14 (TYPE_3__*) ; 
 TYPE_3__* FUNC15 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  vdev_mirror_ops ; 
 int /*<<< orphan*/  vdev_raidz_ops ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  vdev_replacing_ops ; 
 int /*<<< orphan*/  vdev_root_ops ; 
 int /*<<< orphan*/  vdev_spare_ops ; 
 char* ztest_dev_template ; 
 scalar_t__ ztest_device_removal_active ; 
 size_t FUNC17 () ; 
 TYPE_9__ ztest_opts ; 
 int FUNC18 (int) ; 
 size_t FUNC19 (TYPE_4__*,int) ; 
 TYPE_2__* ztest_shared ; 
 TYPE_4__* ztest_spa ; 
 int /*<<< orphan*/  ztest_vdev_lock ; 

void
FUNC20(ztest_ds_t *zd, uint64_t id)
{
	ztest_shared_t *zs = ztest_shared;
	spa_t *spa = ztest_spa;
	spa_aux_vdev_t *sav = &spa->spa_spares;
	vdev_t *rvd = spa->spa_root_vdev;
	vdev_t *oldvd, *newvd, *pvd;
	nvlist_t *root;
	uint64_t leaves;
	uint64_t leaf, top;
	uint64_t ashift = FUNC17();
	uint64_t oldguid, pguid;
	uint64_t oldsize, newsize;
	char oldpath[MAXPATHLEN], newpath[MAXPATHLEN];
	int replacing;
	int oldvd_has_siblings = B_FALSE;
	int newvd_is_spare = B_FALSE;
	int oldvd_is_log;
	int error, expected_error;

	FUNC4(&ztest_vdev_lock);
	leaves = FUNC1(zs->zs_mirrors, 1) * ztest_opts.zo_raidz;

	FUNC8(spa, SCL_ALL, FTAG, RW_WRITER);

	/*
	 * If a vdev is in the process of being removed, its removal may
	 * finish while we are in progress, leading to an unexpected error
	 * value.  Don't bother trying to attach while we are in the middle
	 * of removal.
	 */
	if (ztest_device_removal_active) {
		FUNC9(spa, SCL_ALL, FTAG);
		FUNC5(&ztest_vdev_lock);
		return;
	}

	/*
	 * Decide whether to do an attach or a replace.
	 */
	replacing = FUNC18(2);

	/*
	 * Pick a random top-level vdev.
	 */
	top = FUNC19(spa, B_TRUE);

	/*
	 * Pick a random leaf within it.
	 */
	leaf = FUNC18(leaves);

	/*
	 * Locate this vdev.
	 */
	oldvd = rvd->vdev_child[top];
	if (zs->zs_mirrors >= 1) {
		FUNC0(oldvd->vdev_ops == &vdev_mirror_ops);
		FUNC0(oldvd->vdev_children >= zs->zs_mirrors);
		oldvd = oldvd->vdev_child[leaf / ztest_opts.zo_raidz];
	}
	if (ztest_opts.zo_raidz > 1) {
		FUNC0(oldvd->vdev_ops == &vdev_raidz_ops);
		FUNC0(oldvd->vdev_children == ztest_opts.zo_raidz);
		oldvd = oldvd->vdev_child[leaf % ztest_opts.zo_raidz];
	}

	/*
	 * If we're already doing an attach or replace, oldvd may be a
	 * mirror vdev -- in which case, pick a random child.
	 */
	while (oldvd->vdev_children != 0) {
		oldvd_has_siblings = B_TRUE;
		FUNC0(oldvd->vdev_children >= 2);
		oldvd = oldvd->vdev_child[FUNC18(oldvd->vdev_children)];
	}

	oldguid = oldvd->vdev_guid;
	oldsize = FUNC14(oldvd);
	oldvd_is_log = oldvd->vdev_top->vdev_islog;
	(void) FUNC12(oldpath, oldvd->vdev_path);
	pvd = oldvd->vdev_parent;
	pguid = pvd->vdev_guid;

	/*
	 * If oldvd has siblings, then half of the time, detach it.
	 */
	if (oldvd_has_siblings && FUNC18(2) == 0) {
		FUNC9(spa, SCL_ALL, FTAG);
		error = FUNC11(spa, oldguid, pguid, B_FALSE);
		if (error != 0 && error != ENODEV && error != EBUSY &&
		    error != ENOTSUP && error != ZFS_ERR_CHECKPOINT_EXISTS &&
		    error != ZFS_ERR_DISCARDING_CHECKPOINT)
			FUNC2(0, "detach (%s) returned %d", oldpath, error);
		FUNC5(&ztest_vdev_lock);
		return;
	}

	/*
	 * For the new vdev, choose with equal probability between the two
	 * standard paths (ending in either 'a' or 'b') or a random hot spare.
	 */
	if (sav->sav_count != 0 && FUNC18(3) == 0) {
		newvd = sav->sav_vdevs[FUNC18(sav->sav_count)];
		newvd_is_spare = B_TRUE;
		(void) FUNC12(newpath, newvd->vdev_path);
	} else {
		(void) FUNC7(newpath, sizeof (newpath), ztest_dev_template,
		    ztest_opts.zo_dir, ztest_opts.zo_pool,
		    top * leaves + leaf);
		if (FUNC18(2) == 0)
			newpath[FUNC13(newpath) - 1] = 'b';
		newvd = FUNC15(rvd, newpath);
	}

	if (newvd) {
		/*
		 * Reopen to ensure the vdev's asize field isn't stale.
		 */
		FUNC16(newvd);
		newsize = FUNC14(newvd);
	} else {
		/*
		 * Make newsize a little bigger or smaller than oldsize.
		 * If it's smaller, the attach should fail.
		 * If it's larger, and we're doing a replace,
		 * we should get dynamic LUN growth when we're done.
		 */
		newsize = 10 * oldsize / (9 + FUNC18(3));
	}

	/*
	 * If pvd is not a mirror or root, the attach should fail with ENOTSUP,
	 * unless it's a replace; in that case any non-replacing parent is OK.
	 *
	 * If newvd is already part of the pool, it should fail with EBUSY.
	 *
	 * If newvd is too small, it should fail with EOVERFLOW.
	 */
	if (pvd->vdev_ops != &vdev_mirror_ops &&
	    pvd->vdev_ops != &vdev_root_ops && (!replacing ||
	    pvd->vdev_ops == &vdev_replacing_ops ||
	    pvd->vdev_ops == &vdev_spare_ops))
		expected_error = ENOTSUP;
	else if (newvd_is_spare && (!replacing || oldvd_is_log))
		expected_error = ENOTSUP;
	else if (newvd == oldvd)
		expected_error = replacing ? 0 : EBUSY;
	else if (FUNC15(rvd, newpath) != NULL)
		expected_error = EBUSY;
	else if (newsize < oldsize)
		expected_error = EOVERFLOW;
	else if (ashift > oldvd->vdev_top->vdev_ashift)
		expected_error = EDOM;
	else
		expected_error = 0;

	FUNC9(spa, SCL_ALL, FTAG);

	/*
	 * Build the nvlist describing newpath.
	 */
	root = FUNC3(newpath, NULL, NULL, newvd == NULL ? newsize : 0,
	    ashift, 0, 0, 0, 1);

	error = FUNC10(spa, oldguid, root, replacing);

	FUNC6(root);

	/*
	 * If our parent was the replacing vdev, but the replace completed,
	 * then instead of failing with ENOTSUP we may either succeed,
	 * fail with ENODEV, or fail with EOVERFLOW.
	 */
	if (expected_error == ENOTSUP &&
	    (error == 0 || error == ENODEV || error == EOVERFLOW))
		expected_error = error;

	/*
	 * If someone grew the LUN, the replacement may be too small.
	 */
	if (error == EOVERFLOW || error == EBUSY)
		expected_error = error;

	if (error == ZFS_ERR_CHECKPOINT_EXISTS ||
	    error == ZFS_ERR_DISCARDING_CHECKPOINT)
		expected_error = error;

	/* XXX workaround 6690467 */
	if (error != expected_error && expected_error != EBUSY) {
		FUNC2(0, "attach (%s %llu, %s %llu, %d) "
		    "returned %d, expected %d",
		    oldpath, oldsize, newpath,
		    newsize, replacing, error, expected_error);
	}

	FUNC5(&ztest_vdev_lock);
}