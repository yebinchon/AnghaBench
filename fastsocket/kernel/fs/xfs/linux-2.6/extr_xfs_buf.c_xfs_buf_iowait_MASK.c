#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int b_error; int /*<<< orphan*/  b_iowait; TYPE_1__* b_target; int /*<<< orphan*/  b_io_remaining; } ;
typedef  TYPE_2__ xfs_buf_t ;
struct TYPE_6__ {int /*<<< orphan*/  bt_bdi; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(
	xfs_buf_t		*bp)
{
	FUNC2(bp, _RET_IP_);

	if (FUNC0(&bp->b_io_remaining))
		FUNC1(bp->b_target->bt_bdi, NULL);
	if (!bp->b_error)
		FUNC4(&bp->b_iowait);

	FUNC3(bp, _RET_IP_);
	return bp->b_error;
}