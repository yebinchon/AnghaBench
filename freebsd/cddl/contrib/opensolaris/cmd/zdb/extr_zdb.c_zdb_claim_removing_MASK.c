#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  zcb_removing_size; } ;
typedef  TYPE_1__ zdb_cb_t ;
struct TYPE_16__ {size_t vdev_ms_count; TYPE_5__** vdev_ms; int /*<<< orphan*/ * vdev_indirect_mapping; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_indirect_mapping_t ;
typedef  size_t uint64_t ;
struct TYPE_17__ {int /*<<< orphan*/  svr_allocd_segs; int /*<<< orphan*/  svr_vdev_id; } ;
typedef  TYPE_3__ spa_vdev_removal_t ;
struct TYPE_18__ {TYPE_3__* spa_vdev_removal; } ;
typedef  TYPE_4__ spa_t ;
struct TYPE_19__ {scalar_t__ ms_start; TYPE_10__* ms_sm; } ;
typedef  TYPE_5__ metaslab_t ;
struct TYPE_14__ {size_t sm_start; size_t sm_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  SM_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  claim_segment_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(spa_t *spa, zdb_cb_t *zcb)
{
	if (spa->spa_vdev_removal == NULL)
		return;

	FUNC5(spa, SCL_CONFIG, FTAG, RW_READER);

	spa_vdev_removal_t *svr = spa->spa_vdev_removal;
	vdev_t *vd = FUNC9(spa, svr->svr_vdev_id);
	vdev_indirect_mapping_t *vim = vd->vdev_indirect_mapping;

	for (uint64_t msi = 0; msi < vd->vdev_ms_count; msi++) {
		metaslab_t *msp = vd->vdev_ms[msi];

		if (msp->ms_start >= FUNC8(vim))
			break;

		FUNC0(FUNC3(svr->svr_allocd_segs));

		if (msp->ms_sm != NULL) {
			FUNC1(FUNC7(msp->ms_sm,
			    svr->svr_allocd_segs, SM_ALLOC));

			/*
			 * Clear everything past what has been synced unless
			 * it's past the spacemap, because we have not allocated
			 * mappings for it yet.
			 */
			uint64_t vim_max_offset =
			    FUNC8(vim);
			uint64_t sm_end = msp->ms_sm->sm_start +
			    msp->ms_sm->sm_size;
			if (sm_end > vim_max_offset)
				FUNC2(svr->svr_allocd_segs,
				    vim_max_offset, sm_end - vim_max_offset);
		}

		zcb->zcb_removing_size +=
		    FUNC3(svr->svr_allocd_segs);
		FUNC4(svr->svr_allocd_segs, claim_segment_cb, vd);
	}

	FUNC6(spa, SCL_CONFIG, FTAG);
}