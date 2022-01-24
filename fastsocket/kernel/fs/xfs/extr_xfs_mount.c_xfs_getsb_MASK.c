#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * m_sb_bp; } ;
typedef  TYPE_1__ xfs_mount_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRIBIO ; 
 int XBF_TRYLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

xfs_buf_t *
FUNC5(
	xfs_mount_t	*mp,
	int		flags)
{
	xfs_buf_t	*bp;

	FUNC0(mp->m_sb_bp != NULL);
	bp = mp->m_sb_bp;
	if (flags & XBF_TRYLOCK) {
		if (!FUNC1(bp)) {
			return NULL;
		}
	} else {
		FUNC4(bp, PRIBIO);
	}
	FUNC2(bp);
	FUNC0(FUNC3(bp));
	return bp;
}