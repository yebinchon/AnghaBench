#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ztest_ds_t ;
struct TYPE_12__ {int /*<<< orphan*/  vdev_guid; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_13__ {int /*<<< orphan*/ * spa_vdev_removal; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  POOL_SCAN_SCRUB ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_VDEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ztest_device_removal_active ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__) ; 
 TYPE_2__* ztest_spa ; 
 int /*<<< orphan*/  ztest_vdev_lock ; 

void
FUNC11(ztest_ds_t *zd, uint64_t id)
{
	spa_t *spa = ztest_spa;
	vdev_t *vd;
	uint64_t guid;
	int error;

	FUNC1(&ztest_vdev_lock);

	if (ztest_device_removal_active) {
		FUNC2(&ztest_vdev_lock);
		return;
	}

	/*
	 * Remove a random top-level vdev and wait for removal to finish.
	 */
	FUNC3(spa, SCL_VDEV, FTAG, RW_READER);
	vd = FUNC9(spa, FUNC10(spa, B_FALSE));
	guid = vd->vdev_guid;
	FUNC4(spa, SCL_VDEV, FTAG);

	error = FUNC7(spa, guid, B_FALSE);
	if (error == 0) {
		ztest_device_removal_active = B_TRUE;
		FUNC2(&ztest_vdev_lock);

		while (spa->spa_vdev_removal != NULL)
			FUNC8(FUNC5(spa), 0);
	} else {
		FUNC2(&ztest_vdev_lock);
		return;
	}

	/*
	 * The pool needs to be scrubbed after completing device removal.
	 * Failure to do so may result in checksum errors due to the
	 * strategy employed by ztest_fault_inject() when selecting which
	 * offset are redundant and can be damaged.
	 */
	error = FUNC6(spa, POOL_SCAN_SCRUB);
	if (error == 0) {
		while (FUNC0(FUNC5(spa)))
			FUNC8(FUNC5(spa), 0);
	}

	FUNC1(&ztest_vdev_lock);
	ztest_device_removal_active = B_FALSE;
	FUNC2(&ztest_vdev_lock);
}