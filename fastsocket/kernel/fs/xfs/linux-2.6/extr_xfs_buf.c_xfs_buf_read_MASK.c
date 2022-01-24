#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_off_t ;
typedef  int /*<<< orphan*/  xfs_buftarg_t ;
struct TYPE_9__ {int b_flags; } ;
typedef  TYPE_1__ xfs_buf_t ;
typedef  int xfs_buf_flags_t ;

/* Variables and functions */
 int XBF_ASYNC ; 
 int XBF_LOCK ; 
 int XBF_READ ; 
 int XBF_TRYLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xb_get_read ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

xfs_buf_t *
FUNC7(
	xfs_buftarg_t		*target,
	xfs_off_t		ioff,
	size_t			isize,
	xfs_buf_flags_t		flags)
{
	xfs_buf_t		*bp;

	flags |= XBF_READ;

	bp = FUNC4(target, ioff, isize, flags);
	if (bp) {
		FUNC3(bp, flags, _RET_IP_);

		if (!FUNC0(bp)) {
			FUNC1(xb_get_read);
			FUNC2(bp, flags);
		} else if (flags & XBF_ASYNC) {
			/*
			 * Read ahead call which is already satisfied,
			 * drop the buffer
			 */
			goto no_buffer;
		} else {
			/* We do not want read in the flags */
			bp->b_flags &= ~XBF_READ;
		}
	}

	return bp;

 no_buffer:
	if (flags & (XBF_LOCK | XBF_TRYLOCK))
		FUNC6(bp);
	FUNC5(bp);
	return NULL;
}