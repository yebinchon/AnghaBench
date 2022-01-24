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
typedef  int __int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DEFAULT_LOG_COUNT ; 
 int XFS_SB_BAD_FEATURES2 ; 
 int XFS_SB_FEATURES2 ; 
 int XFS_SB_UNIT ; 
 int XFS_SB_UUID ; 
 int XFS_SB_VERSIONNUM ; 
 int XFS_SB_WIDTH ; 
 int /*<<< orphan*/  XFS_TRANS_SB_UNIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6(
	xfs_mount_t	*mp,
	__int64_t	fields)
{
	xfs_trans_t	*tp;
	int		error;

	FUNC0(fields & (XFS_SB_UNIT | XFS_SB_WIDTH | XFS_SB_UUID |
			 XFS_SB_FEATURES2 | XFS_SB_BAD_FEATURES2 |
			 XFS_SB_VERSIONNUM));

	tp = FUNC2(mp, XFS_TRANS_SB_UNIT);
	error = FUNC5(tp, 0, mp->m_sb.sb_sectsize + 128, 0, 0,
				XFS_DEFAULT_LOG_COUNT);
	if (error) {
		FUNC3(tp, 0);
		return error;
	}
	FUNC1(tp, fields);
	error = FUNC4(tp, 0);
	return error;
}