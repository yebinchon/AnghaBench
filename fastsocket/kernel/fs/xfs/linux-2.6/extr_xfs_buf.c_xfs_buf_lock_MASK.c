#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int b_flags; int /*<<< orphan*/  b_sema; TYPE_1__* b_target; int /*<<< orphan*/  b_io_remaining; int /*<<< orphan*/  b_pin_count; } ;
typedef  TYPE_2__ xfs_buf_t ;
struct TYPE_7__ {int /*<<< orphan*/  bt_bdi; int /*<<< orphan*/  bt_mount; } ;

/* Variables and functions */
 int XBF_STALE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(
	xfs_buf_t		*bp)
{
	FUNC4(bp, _RET_IP_);

	if (FUNC1(&bp->b_pin_count) && (bp->b_flags & XBF_STALE))
		FUNC6(bp->b_target->bt_mount, 0);
	if (FUNC1(&bp->b_io_remaining))
		FUNC2(bp->b_target->bt_bdi, NULL);
	FUNC3(&bp->b_sema);
	FUNC0(bp);

	FUNC5(bp, _RET_IP_);
}