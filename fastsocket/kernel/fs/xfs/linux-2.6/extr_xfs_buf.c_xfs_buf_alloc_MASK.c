#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_off_t ;
typedef  int xfs_buf_flags_t ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf {size_t b_buffer_length; size_t b_count_desired; int b_flags; int /*<<< orphan*/  b_waiters; int /*<<< orphan*/  b_pin_count; int /*<<< orphan*/  b_bn; int /*<<< orphan*/  b_file_offset; struct xfs_buftarg* b_target; int /*<<< orphan*/  b_sema; int /*<<< orphan*/  b_rbnode; int /*<<< orphan*/  b_list; int /*<<< orphan*/  b_lru; int /*<<< orphan*/  b_iowait; int /*<<< orphan*/  b_lru_ref; int /*<<< orphan*/  b_hold; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int XBF_ASYNC ; 
 int XBF_DONT_BLOCK ; 
 int XBF_LOCK ; 
 int XBF_MAPPED ; 
 int XBF_READ_AHEAD ; 
 int XBF_TRYLOCK ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*) ; 
 int /*<<< orphan*/  XFS_BUF_DADDR_NULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct xfs_buf* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  xb_create ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  xfs_buf_zone ; 

struct xfs_buf *
FUNC12(
	struct xfs_buftarg	*target,
	xfs_off_t		range_base,
	size_t			range_length,
	xfs_buf_flags_t		flags)
{
	struct xfs_buf		*bp;

	bp = FUNC7(xfs_buf_zone, FUNC11(flags));
	if (FUNC10(!bp))
		return NULL;

	/*
	 * We don't want certain flags to appear in b_flags unless they are
	 * specifically set by later operations on the buffer.
	 */
	flags &= ~(XBF_LOCK | XBF_MAPPED | XBF_DONT_BLOCK |
		   XBF_TRYLOCK | XBF_ASYNC | XBF_READ_AHEAD);

	FUNC4(&bp->b_hold, 1);
	FUNC4(&bp->b_lru_ref, 1);
	FUNC5(&bp->b_iowait);
	FUNC0(&bp->b_lru);
	FUNC0(&bp->b_list);
	FUNC1(&bp->b_rbnode);
	FUNC8(&bp->b_sema, 0); /* held, no waiters */
	FUNC2(bp);
	bp->b_target = target;
	bp->b_file_offset = range_base;
	/*
	 * Set buffer_length and count_desired to the same value initially.
	 * I/O routines should use count_desired, which will be the same in
	 * most cases but may be reset (e.g. XFS recovery).
	 */
	bp->b_buffer_length = bp->b_count_desired = range_length;
	bp->b_flags = flags;
	bp->b_bn = XFS_BUF_DADDR_NULL;
	FUNC4(&bp->b_pin_count, 0);
	FUNC6(&bp->b_waiters);

	FUNC3(xb_create);
	FUNC9(bp, _RET_IP_);

	return bp;
}