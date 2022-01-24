#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_5__ {scalar_t__ sb_sectsize; } ;
struct TYPE_6__ {TYPE_1__ m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  XFS_DEFAULT_LOG_COUNT ; 
 int /*<<< orphan*/  XFS_SB_UUID ; 
 int /*<<< orphan*/  XFS_TRANS_DUMMY1 ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(
	xfs_mount_t	*mp)
{
	xfs_trans_t	*tp;
	int		error;

	tp = FUNC0(mp, XFS_TRANS_DUMMY1, KM_SLEEP);
	error = FUNC4(tp, 0, mp->m_sb.sb_sectsize + 128, 0, 0,
					XFS_DEFAULT_LOG_COUNT);
	if (error) {
		FUNC2(tp, 0);
		return error;
	}

	/* log the UUID because it is an unchanging field */
	FUNC1(tp, XFS_SB_UUID);
	FUNC5(tp);
	return FUNC3(tp, 0);
}