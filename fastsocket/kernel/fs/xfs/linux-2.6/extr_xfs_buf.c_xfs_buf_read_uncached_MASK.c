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
typedef  int /*<<< orphan*/  xfs_daddr_t ;
struct xfs_buf {int dummy; } ;
typedef  struct xfs_buf xfs_buf_t ;
struct xfs_mount {int dummy; } ;
struct xfs_buftarg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 struct xfs_buf* FUNC3 (struct xfs_buftarg*,size_t,int) ; 
 int FUNC4 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_mount*,struct xfs_buf*) ; 

struct xfs_buf *
FUNC8(
	struct xfs_mount	*mp,
	struct xfs_buftarg	*target,
	xfs_daddr_t		daddr,
	size_t			length,
	int			flags)
{
	xfs_buf_t		*bp;
	int			error;

	bp = FUNC3(target, length, flags);
	if (!bp)
		return NULL;

	/* set up the buffer for a read IO */
	FUNC5(bp);
	FUNC2(bp, daddr);
	FUNC1(bp);
	FUNC0(bp);

	FUNC7(mp, bp);
	error = FUNC4(bp);
	if (error) {
		FUNC6(bp);
		return NULL;
	}
	return bp;
}