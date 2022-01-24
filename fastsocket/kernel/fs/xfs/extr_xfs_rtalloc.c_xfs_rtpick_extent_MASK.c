#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
typedef  int xfs_rtblock_t ;
struct TYPE_8__ {int sb_rextents; } ;
struct TYPE_9__ {TYPE_4__* m_rbmip; TYPE_2__ m_sb; } ;
typedef  TYPE_3__ xfs_mount_t ;
typedef  int xfs_extlen_t ;
typedef  int __uint64_t ;
struct TYPE_7__ {int di_flags; int /*<<< orphan*/  di_atime; } ;
struct TYPE_10__ {TYPE_1__ i_d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int XFS_DIFLAG_NEWRTBM ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 

int					/* error */
FUNC5(
	xfs_mount_t	*mp,		/* file system mount point */
	xfs_trans_t	*tp,		/* transaction pointer */
	xfs_extlen_t	len,		/* allocation length (rtextents) */
	xfs_rtblock_t	*pick)		/* result rt extent */
{
	xfs_rtblock_t	b;		/* result block */
	int		log2;		/* log of sequence number */
	__uint64_t	resid;		/* residual after log removed */
	__uint64_t	seq;		/* sequence number of file creation */
	__uint64_t	*seqp;		/* pointer to seqno in inode */

	FUNC0(FUNC3(mp->m_rbmip, XFS_ILOCK_EXCL));

	seqp = (__uint64_t *)&mp->m_rbmip->i_d.di_atime;
	if (!(mp->m_rbmip->i_d.di_flags & XFS_DIFLAG_NEWRTBM)) {
		mp->m_rbmip->i_d.di_flags |= XFS_DIFLAG_NEWRTBM;
		*seqp = 0;
	}
	seq = *seqp;
	if ((log2 = FUNC2(seq)) == -1)
		b = 0;
	else {
		resid = seq - (1ULL << log2);
		b = (mp->m_sb.sb_rextents * ((resid << 1) + 1ULL)) >>
		    (log2 + 1);
		if (b >= mp->m_sb.sb_rextents)
			b = FUNC1(b, mp->m_sb.sb_rextents);
		if (b + len > mp->m_sb.sb_rextents)
			b = mp->m_sb.sb_rextents - len;
	}
	*seqp = seq + 1;
	FUNC4(tp, mp->m_rbmip, XFS_ILOG_CORE);
	*pick = b;
	return 0;
}