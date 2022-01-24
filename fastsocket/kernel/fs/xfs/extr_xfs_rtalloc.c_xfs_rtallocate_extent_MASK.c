#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* t_mountp; } ;
typedef  TYPE_1__ xfs_trans_t ;
typedef  scalar_t__ xfs_rtblock_t ;
struct TYPE_12__ {int /*<<< orphan*/  m_rbmip; } ;
typedef  TYPE_2__ xfs_mount_t ;
typedef  int /*<<< orphan*/  xfs_fsblock_t ;
typedef  int xfs_extlen_t ;
typedef  int /*<<< orphan*/  xfs_buf_t ;
typedef  int xfs_alloctype_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 scalar_t__ NULLRTBLOCK ; 
#define  XFS_ALLOCTYPE_ANY_AG 130 
#define  XFS_ALLOCTYPE_NEAR_BNO 129 
#define  XFS_ALLOCTYPE_THIS_BNO 128 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_TRANS_SB_FREXTENTS ; 
 int /*<<< orphan*/  XFS_TRANS_SB_RES_FREXTENTS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,scalar_t__,int,int,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,scalar_t__,int,int,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*,int,int,int*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,long) ; 

int					/* error */
FUNC6(
	xfs_trans_t	*tp,		/* transaction pointer */
	xfs_rtblock_t	bno,		/* starting block number to allocate */
	xfs_extlen_t	minlen,		/* minimum length to allocate */
	xfs_extlen_t	maxlen,		/* maximum length to allocate */
	xfs_extlen_t	*len,		/* out: actual length allocated */
	xfs_alloctype_t	type,		/* allocation type XFS_ALLOCTYPE... */
	int		wasdel,		/* was a delayed allocation extent */
	xfs_extlen_t	prod,		/* extent product factor */
	xfs_rtblock_t	*rtblock)	/* out: start block allocated */
{
	xfs_mount_t	*mp = tp->t_mountp;
	int		error;		/* error value */
	xfs_rtblock_t	r;		/* result allocated block */
	xfs_fsblock_t	sb;		/* summary file block number */
	xfs_buf_t	*sumbp;		/* summary file block buffer */

	FUNC0(FUNC1(mp->m_rbmip, XFS_ILOCK_EXCL));
	FUNC0(minlen > 0 && minlen <= maxlen);

	/*
	 * If prod is set then figure out what to do to minlen and maxlen.
	 */
	if (prod > 1) {
		xfs_extlen_t	i;

		if ((i = maxlen % prod))
			maxlen -= i;
		if ((i = minlen % prod))
			minlen += prod - i;
		if (maxlen < minlen) {
			*rtblock = NULLRTBLOCK;
			return 0;
		}
	}

	sumbp = NULL;
	/*
	 * Allocate by size, or near another block, or exactly at some block.
	 */
	switch (type) {
	case XFS_ALLOCTYPE_ANY_AG:
		error = FUNC4(mp, tp, minlen, maxlen, len,
				&sumbp,	&sb, prod, &r);
		break;
	case XFS_ALLOCTYPE_NEAR_BNO:
		error = FUNC3(mp, tp, bno, minlen, maxlen,
				len, &sumbp, &sb, prod, &r);
		break;
	case XFS_ALLOCTYPE_THIS_BNO:
		error = FUNC2(mp, tp, bno, minlen, maxlen,
				len, &sumbp, &sb, prod, &r);
		break;
	default:
		error = EIO;
		FUNC0(0);
	}
	if (error)
		return error;

	/*
	 * If it worked, update the superblock.
	 */
	if (r != NULLRTBLOCK) {
		long	slen = (long)*len;

		FUNC0(*len >= minlen && *len <= maxlen);
		if (wasdel)
			FUNC5(tp, XFS_TRANS_SB_RES_FREXTENTS, -slen);
		else
			FUNC5(tp, XFS_TRANS_SB_FREXTENTS, -slen);
	}
	*rtblock = r;
	return 0;
}