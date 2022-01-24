#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int b_flags; int /*<<< orphan*/  b_sema; int /*<<< orphan*/  b_hold; } ;
typedef  TYPE_1__ xfs_buf_t ;

/* Variables and functions */
 int XBF_ASYNC ; 
 int XBF_DELWRI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int _XBF_DELWRI_Q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC5(
	xfs_buf_t		*bp)
{
	if ((bp->b_flags & (XBF_DELWRI|_XBF_DELWRI_Q)) == XBF_DELWRI) {
		FUNC1(&bp->b_hold);
		bp->b_flags |= XBF_ASYNC;
		FUNC4(bp, 0);
	}

	FUNC0(bp);
	FUNC3(&bp->b_sema);

	FUNC2(bp, _RET_IP_);
}