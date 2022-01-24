#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int b_flags; scalar_t__ b_error; int /*<<< orphan*/  b_iowait; int /*<<< orphan*/  b_iodone_work; scalar_t__ b_iodone; } ;
typedef  TYPE_1__ xfs_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int XBF_ASYNC ; 
 int XBF_DONE ; 
 int XBF_READ ; 
 int XBF_READ_AHEAD ; 
 int XBF_WRITE ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfslogd_workqueue ; 

void
FUNC5(
	xfs_buf_t		*bp,
	int			schedule)
{
	FUNC3(bp, _RET_IP_);

	bp->b_flags &= ~(XBF_READ | XBF_WRITE | XBF_READ_AHEAD);
	if (bp->b_error == 0)
		bp->b_flags |= XBF_DONE;

	if ((bp->b_iodone) || (bp->b_flags & XBF_ASYNC)) {
		if (schedule) {
			FUNC0(&bp->b_iodone_work, xfs_buf_iodone_work);
			FUNC2(xfslogd_workqueue, &bp->b_iodone_work);
		} else {
			FUNC4(&bp->b_iodone_work);
		}
	} else {
		FUNC1(&bp->b_iowait);
	}
}