#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int zs_mirrors; int /*<<< orphan*/  zs_splits; } ;
typedef  TYPE_1__ ztest_shared_t ;
typedef  int /*<<< orphan*/  ztest_ds_t ;
struct TYPE_13__ {int vdev_children; int /*<<< orphan*/ * vdev_ops; scalar_t__ vdev_islog; struct TYPE_13__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_14__ {int /*<<< orphan*/  spa_props_lock; int /*<<< orphan*/  spa_config; TYPE_2__* spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_15__ {int zo_raidz; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_VDEV ; 
 int /*<<< orphan*/  VDEV_TYPE_HOLE ; 
 int /*<<< orphan*/  VDEV_TYPE_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CHILDREN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_IS_HOLE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_TYPE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 TYPE_3__* FUNC21 (char*) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int FUNC22 (TYPE_3__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_hole_ops ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 TYPE_6__ ztest_opts ; 
 TYPE_1__* ztest_shared ; 
 TYPE_3__* ztest_spa ; 
 int /*<<< orphan*/  ztest_vdev_lock ; 

void
FUNC23(ztest_ds_t *zd, uint64_t id)
{
	ztest_shared_t *zs = ztest_shared;
	spa_t *spa = ztest_spa;
	vdev_t *rvd = spa->spa_root_vdev;
	nvlist_t *tree, **child, *config, *split, **schild;
	uint_t c, children, schildren = 0, lastlogid = 0;
	int error = 0;

	FUNC3(&ztest_vdev_lock);

	/* ensure we have a useable config; mirrors of raidz aren't supported */
	if (zs->zs_mirrors < 3 || ztest_opts.zo_raidz > 1) {
		FUNC4(&ztest_vdev_lock);
		return;
	}

	/* clean up the old pool, if any */
	(void) FUNC20("splitp");

	FUNC18(spa, SCL_VDEV, FTAG, RW_READER);

	/* generate a config from the existing config */
	FUNC3(&spa->spa_props_lock);
	FUNC0(FUNC12(spa->spa_config, ZPOOL_CONFIG_VDEV_TREE,
	    &tree) == 0);
	FUNC4(&spa->spa_props_lock);

	FUNC0(FUNC13(tree, ZPOOL_CONFIG_CHILDREN, &child,
	    &children) == 0);

	schild = FUNC2(rvd->vdev_children * sizeof (nvlist_t *));
	for (c = 0; c < children; c++) {
		vdev_t *tvd = rvd->vdev_child[c];
		nvlist_t **mchild;
		uint_t mchildren;

		if (tvd->vdev_islog || tvd->vdev_ops == &vdev_hole_ops) {
			FUNC0(FUNC9(&schild[schildren], NV_UNIQUE_NAME,
			    0) == 0);
			FUNC0(FUNC7(schild[schildren],
			    ZPOOL_CONFIG_TYPE, VDEV_TYPE_HOLE) == 0);
			FUNC0(FUNC8(schild[schildren],
			    ZPOOL_CONFIG_IS_HOLE, 1) == 0);
			if (lastlogid == 0)
				lastlogid = schildren;
			++schildren;
			continue;
		}
		lastlogid = 0;
		FUNC0(FUNC13(child[c],
		    ZPOOL_CONFIG_CHILDREN, &mchild, &mchildren) == 0);
		FUNC0(FUNC10(mchild[0], &schild[schildren++], 0) == 0);
	}

	/* OK, create a config that can be used to split */
	FUNC0(FUNC9(&split, NV_UNIQUE_NAME, 0) == 0);
	FUNC0(FUNC7(split, ZPOOL_CONFIG_TYPE,
	    VDEV_TYPE_ROOT) == 0);
	FUNC0(FUNC6(split, ZPOOL_CONFIG_CHILDREN, schild,
	    lastlogid != 0 ? lastlogid : schildren) == 0);

	FUNC0(FUNC9(&config, NV_UNIQUE_NAME, 0) == 0);
	FUNC0(FUNC5(config, ZPOOL_CONFIG_VDEV_TREE, split) == 0);

	for (c = 0; c < schildren; c++)
		FUNC11(schild[c]);
	FUNC1(schild);
	FUNC11(split);

	FUNC19(spa, SCL_VDEV, FTAG);

	FUNC15(&ztest_name_lock, RW_WRITER);
	error = FUNC22(spa, "splitp", config, NULL, B_FALSE);
	FUNC16(&ztest_name_lock);

	FUNC11(config);

	if (error == 0) {
		(void) FUNC14("successful split - results:\n");
		FUNC3(&spa_namespace_lock);
		FUNC17(spa);
		FUNC17(FUNC21("splitp"));
		FUNC4(&spa_namespace_lock);
		++zs->zs_splits;
		--zs->zs_mirrors;
	}
	FUNC4(&ztest_vdev_lock);
}