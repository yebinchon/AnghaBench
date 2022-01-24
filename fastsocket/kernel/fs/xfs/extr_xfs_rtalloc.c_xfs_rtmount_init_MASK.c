#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_suminfo_t ;
struct TYPE_9__ {scalar_t__ sb_rblocks; int sb_rextslog; int sb_rbmblocks; int /*<<< orphan*/  sb_blocksize; } ;
typedef  TYPE_1__ xfs_sb_t ;
struct TYPE_10__ {int m_rsumlevels; int m_rsumsize; int /*<<< orphan*/ * m_rtdev_targp; TYPE_1__ m_sb; int /*<<< orphan*/ * m_rsumip; int /*<<< orphan*/  m_rbmip; } ;
typedef  TYPE_2__ xfs_mount_t ;
typedef  scalar_t__ xfs_daddr_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  EFBIG ; 
 int EIO ; 
 int /*<<< orphan*/  ENODEV ; 
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,...) ; 

int				/* error */
FUNC8(
	xfs_mount_t	*mp)	/* file system mount structure */
{
	xfs_buf_t	*bp;	/* buffer for last block of subvolume */
	xfs_daddr_t	d;	/* address of last block of subvolume */
	xfs_sb_t	*sbp;	/* filesystem superblock copy in mount */

	sbp = &mp->m_sb;
	if (sbp->sb_rblocks == 0)
		return 0;
	if (mp->m_rtdev_targp == NULL) {
		FUNC7(mp,
	"Filesystem has a realtime volume, use rtdev=device option");
		return FUNC1(ENODEV);
	}
	mp->m_rsumlevels = sbp->sb_rextslog + 1;
	mp->m_rsumsize =
		(uint)sizeof(xfs_suminfo_t) * mp->m_rsumlevels *
		sbp->sb_rbmblocks;
	mp->m_rsumsize = FUNC4(mp->m_rsumsize, sbp->sb_blocksize);
	mp->m_rbmip = *(mp->m_rsumip = NULL);
	/*
	 * Check that the realtime section is an ok size.
	 */
	d = (xfs_daddr_t)FUNC3(mp, mp->m_sb.sb_rblocks);
	if (FUNC0(mp, d) != mp->m_sb.sb_rblocks) {
		FUNC7(mp, "realtime mount -- %llu != %llu",
			(unsigned long long) FUNC0(mp, d),
			(unsigned long long) mp->m_sb.sb_rblocks);
		return FUNC1(EFBIG);
	}
	bp = FUNC5(mp, mp->m_rtdev_targp,
					d - FUNC3(mp, 1),
					FUNC2(mp, 1), 0);
	if (!bp) {
		FUNC7(mp, "realtime device size check failed");
		return EIO;
	}
	FUNC6(bp);
	return 0;
}