#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* t_mountp; } ;
typedef  TYPE_1__ xfs_trans_t ;
typedef  int /*<<< orphan*/  xfs_sb_t ;
typedef  long long xfs_sb_field_t ;
struct TYPE_9__ {int /*<<< orphan*/  m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;
typedef  int /*<<< orphan*/  __uint64_t ;
typedef  long long __int64_t ;
struct TYPE_10__ {int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long long XFS_SB_MOD_BITS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_6__* xfs_sb_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,long long) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

void
FUNC7(xfs_trans_t *tp, __int64_t fields)
{
	xfs_buf_t	*bp;
	int		first;
	int		last;
	xfs_mount_t	*mp;
	xfs_sb_field_t	f;

	FUNC0(fields);
	if (!fields)
		return;
	mp = tp->t_mountp;
	bp = FUNC5(tp, mp, 0);
	first = sizeof(xfs_sb_t);
	last = 0;

	/* translate/copy */

	FUNC4(FUNC1(bp), &mp->m_sb, fields);

	/* find modified range */
	f = (xfs_sb_field_t)FUNC2((__uint64_t)fields);
	FUNC0((1LL << f) & XFS_SB_MOD_BITS);
	last = xfs_sb_info[f + 1].offset - 1;

	f = (xfs_sb_field_t)FUNC3((__uint64_t)fields);
	FUNC0((1LL << f) & XFS_SB_MOD_BITS);
	first = xfs_sb_info[f].offset;

	FUNC6(tp, bp, first, last);
}