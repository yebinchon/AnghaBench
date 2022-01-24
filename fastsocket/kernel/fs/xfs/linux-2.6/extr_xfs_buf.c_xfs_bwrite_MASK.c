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
struct xfs_mount {int dummy; } ;
struct xfs_buf {int b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN_META_IO_ERROR ; 
 int XBF_ASYNC ; 
 int XBF_READ ; 
 int XBF_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 
 int FUNC2 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 

int
FUNC5(
	struct xfs_mount	*mp,
	struct xfs_buf		*bp)
{
	int			error;

	bp->b_flags |= XBF_WRITE;
	bp->b_flags &= ~(XBF_ASYNC | XBF_READ);

	FUNC1(bp);
	FUNC0(bp);

	error = FUNC2(bp);
	if (error)
		FUNC4(mp, SHUTDOWN_META_IO_ERROR);
	FUNC3(bp);
	return error;
}