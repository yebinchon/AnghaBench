#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sb_icount; int /*<<< orphan*/  sb_ifree; int /*<<< orphan*/  sb_frextents; scalar_t__ sb_fdblocks; } ;
struct TYPE_9__ {int /*<<< orphan*/  m_sb_lock; TYPE_1__ m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;
struct TYPE_10__ {int /*<<< orphan*/  allocino; int /*<<< orphan*/  freeino; int /*<<< orphan*/  freertx; scalar_t__ freedata; } ;
typedef  TYPE_3__ xfs_fsop_counts_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  XFS_ICSB_LAZY_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int
FUNC4(
	xfs_mount_t		*mp,
	xfs_fsop_counts_t	*cnt)
{
	FUNC3(mp, XFS_ICSB_LAZY_COUNT);
	FUNC1(&mp->m_sb_lock);
	cnt->freedata = mp->m_sb.sb_fdblocks - FUNC0(mp);
	cnt->freertx = mp->m_sb.sb_frextents;
	cnt->freeino = mp->m_sb.sb_ifree;
	cnt->allocino = mp->m_sb.sb_icount;
	FUNC2(&mp->m_sb_lock);
	return 0;
}