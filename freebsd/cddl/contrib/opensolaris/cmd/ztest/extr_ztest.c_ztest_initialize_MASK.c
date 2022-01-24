#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ztest_ds_t ;
struct TYPE_10__ {int vdev_guid; int /*<<< orphan*/ * vdev_initialize_thread; int /*<<< orphan*/  vdev_path; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_12__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
#define  POOL_INITIALIZE_CANCEL 130 
#define  POOL_INITIALIZE_DO 129 
 int /*<<< orphan*/  POOL_INITIALIZE_FUNCS ; 
#define  POOL_INITIALIZE_SUSPEND 128 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_VDEV ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int,int) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_1__*,int) ; 
 TYPE_5__ ztest_opts ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ztest_spa ; 
 int /*<<< orphan*/  ztest_vdev_lock ; 

void
FUNC11(ztest_ds_t *zd, uint64_t id)
{
	spa_t *spa = ztest_spa;
	int error = 0;

	FUNC1(&ztest_vdev_lock);

	FUNC4(spa, SCL_VDEV, FTAG, RW_READER);

	/* Random leaf vdev */
	vdev_t *rand_vd = FUNC10(spa->spa_root_vdev);
	if (rand_vd == NULL) {
		FUNC5(spa, SCL_VDEV, FTAG);
		FUNC2(&ztest_vdev_lock);
		return;
	}

	/*
	 * The random vdev we've selected may change as soon as we
	 * drop the spa_config_lock. We create local copies of things
	 * we're interested in.
	 */
	uint64_t guid = rand_vd->vdev_guid;
	char *path = FUNC7(rand_vd->vdev_path);
	boolean_t active = rand_vd->vdev_initialize_thread != NULL;

	FUNC8("vd %p, guid %llu", rand_vd, guid);
	FUNC5(spa, SCL_VDEV, FTAG);

	uint64_t cmd = FUNC9(POOL_INITIALIZE_FUNCS);
	error = FUNC6(spa, guid, cmd);
	switch (cmd) {
	case POOL_INITIALIZE_CANCEL:
		if (ztest_opts.zo_verbose >= 4) {
			(void) FUNC3("Cancel initialize %s", path);
			if (!active)
				(void) FUNC3(" failed (no initialize active)");
			(void) FUNC3("\n");
		}
		break;
	case POOL_INITIALIZE_DO:
		if (ztest_opts.zo_verbose >= 4) {
			(void) FUNC3("Start initialize %s", path);
			if (active && error == 0)
				(void) FUNC3(" failed (already active)");
			else if (error != 0)
				(void) FUNC3(" failed (error %d)", error);
			(void) FUNC3("\n");
		}
		break;
	case POOL_INITIALIZE_SUSPEND:
		if (ztest_opts.zo_verbose >= 4) {
			(void) FUNC3("Suspend initialize %s", path);
			if (!active)
				(void) FUNC3(" failed (no initialize active)");
			(void) FUNC3("\n");
		}
		break;
	}
	FUNC0(path);
	FUNC2(&ztest_vdev_lock);
}