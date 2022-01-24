#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int b_flags; int /*<<< orphan*/  b_io_remaining; } ;
typedef  TYPE_1__ xfs_buf_t ;

/* Variables and functions */
 int XBF_DELWRI ; 
 int XBF_WRITE ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

void
FUNC8(
	xfs_buf_t		*bp)
{
	FUNC3(bp, _RET_IP_);

	if (bp->b_flags & XBF_DELWRI) {
		FUNC4(bp, 1);
		return;
	}

	if (bp->b_flags & XBF_WRITE) {
		FUNC7(bp);
	}

	FUNC5(bp);

	/* Set the count to 1 initially, this will stop an I/O
	 * completion callout which happens before we have started
	 * all the I/O from calling xfs_buf_ioend too early.
	 */
	FUNC2(&bp->b_io_remaining, 1);
	FUNC0(bp);
	FUNC1(bp, 1);

	FUNC6(bp);
}