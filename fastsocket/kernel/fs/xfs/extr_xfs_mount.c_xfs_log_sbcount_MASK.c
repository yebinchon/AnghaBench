#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_8__ {scalar_t__ sb_sectsize; } ;
struct TYPE_7__ {TYPE_2__ m_sb; } ;
typedef  TYPE_1__ xfs_mount_t ;
typedef  scalar_t__ uint ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  XFS_DEFAULT_LOG_COUNT ; 
 int XFS_SB_FDBLOCKS ; 
 int XFS_SB_ICOUNT ; 
 int XFS_SB_IFREE ; 
 int /*<<< orphan*/  XFS_TRANS_SB_COUNT ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(
	xfs_mount_t	*mp,
	uint		sync)
{
	xfs_trans_t	*tp;
	int		error;

	if (!FUNC1(mp))
		return 0;

	FUNC2(mp, 0);

	/*
	 * we don't need to do this if we are updating the superblock
	 * counters on every modification.
	 */
	if (!FUNC4(&mp->m_sb))
		return 0;

	tp = FUNC0(mp, XFS_TRANS_SB_COUNT, KM_SLEEP);
	error = FUNC7(tp, 0, mp->m_sb.sb_sectsize + 128, 0, 0,
					XFS_DEFAULT_LOG_COUNT);
	if (error) {
		FUNC5(tp, 0);
		return error;
	}

	FUNC3(tp, XFS_SB_IFREE | XFS_SB_ICOUNT | XFS_SB_FDBLOCKS);
	if (sync)
		FUNC8(tp);
	error = FUNC6(tp, 0);
	return error;
}