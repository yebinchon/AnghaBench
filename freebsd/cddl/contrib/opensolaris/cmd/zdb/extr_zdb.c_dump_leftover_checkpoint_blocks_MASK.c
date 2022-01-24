#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t vdev_children; scalar_t__ vdev_top_zap; int /*<<< orphan*/  vdev_ashift; int /*<<< orphan*/  vdev_asize; struct TYPE_5__** vdev_child; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  space_map_t ;
struct TYPE_6__ {int /*<<< orphan*/  spa_meta_objset; TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  VDEV_TOP_ZAP_POOL_CHECKPOINT_SM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,size_t*) ; 

__attribute__((used)) static void
FUNC8(spa_t *spa)
{
	vdev_t *rvd = spa->spa_root_vdev;

	for (uint64_t i = 0; i < rvd->vdev_children; i++) {
		vdev_t *vd = rvd->vdev_child[i];

		space_map_t *checkpoint_sm = NULL;
		uint64_t checkpoint_sm_obj;

		if (vd->vdev_top_zap == 0)
			continue;

		if (FUNC6(FUNC2(spa), vd->vdev_top_zap,
		    VDEV_TOP_ZAP_POOL_CHECKPOINT_SM) != 0)
			continue;

		FUNC0(FUNC7(FUNC2(spa), vd->vdev_top_zap,
		    VDEV_TOP_ZAP_POOL_CHECKPOINT_SM,
		    sizeof (uint64_t), 1, &checkpoint_sm_obj));

		FUNC0(FUNC4(&checkpoint_sm, FUNC2(spa),
		    checkpoint_sm_obj, 0, vd->vdev_asize, vd->vdev_ashift));
		FUNC5(checkpoint_sm);
		FUNC1(spa->spa_meta_objset, checkpoint_sm);
		FUNC3(checkpoint_sm);
	}
}