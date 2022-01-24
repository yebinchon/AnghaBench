#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int sb_agblocks; scalar_t__ sb_dblocks; scalar_t__ sb_imax_pct; } ;
typedef  TYPE_1__ xfs_sb_t ;
struct TYPE_15__ {int pagi_inodeok; int pagf_metadata; int /*<<< orphan*/  pag_buf_tree; int /*<<< orphan*/  pag_buf_lock; int /*<<< orphan*/  pag_ici_root; int /*<<< orphan*/  pag_ici_reclaim_lock; int /*<<< orphan*/  pag_ici_lock; TYPE_3__* pag_mount; scalar_t__ pag_agno; } ;
typedef  TYPE_2__ xfs_perag_t ;
struct TYPE_16__ {int m_flags; int /*<<< orphan*/  m_perag_tree; scalar_t__ m_maxicount; int /*<<< orphan*/  m_perag_lock; TYPE_1__ m_sb; } ;
typedef  TYPE_3__ xfs_mount_t ;
typedef  scalar_t__ xfs_ino_t ;
typedef  scalar_t__ xfs_agnumber_t ;
typedef  int /*<<< orphan*/  xfs_agino_t ;
typedef  scalar_t__ __uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KM_MAYFAIL ; 
 int /*<<< orphan*/  RB_ROOT ; 
 scalar_t__ FUNC2 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ XFS_MAXINUMBER_32 ; 
 int XFS_MOUNT_32BITINODES ; 
 int XFS_MOUNT_SMALL_INUMS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 

int
FUNC17(
	xfs_mount_t	*mp,
	xfs_agnumber_t	agcount,
	xfs_agnumber_t	*maxagi)
{
	xfs_agnumber_t	index, max_metadata;
	xfs_agnumber_t	first_initialised = 0;
	xfs_perag_t	*pag;
	xfs_agino_t	agino;
	xfs_ino_t	ino;
	xfs_sb_t	*sbp = &mp->m_sb;
	int		error = -ENOMEM;

	/*
	 * Walk the current per-ag tree so we don't try to initialise AGs
	 * that already exist (growfs case). Allocate and insert all the
	 * AGs we don't find ready for initialisation.
	 */
	for (index = 0; index < agcount; index++) {
		pag = FUNC15(mp, index);
		if (pag) {
			FUNC16(pag);
			continue;
		}
		if (!first_initialised)
			first_initialised = index;

		pag = FUNC6(sizeof(*pag), KM_MAYFAIL);
		if (!pag)
			goto out_unwind;
		pag->pag_agno = index;
		pag->pag_mount = mp;
		FUNC13(&pag->pag_ici_lock);
		FUNC7(&pag->pag_ici_reclaim_lock);
		FUNC1(&pag->pag_ici_root, GFP_ATOMIC);
		FUNC13(&pag->pag_buf_lock);
		pag->pag_buf_tree = RB_ROOT;

		if (FUNC10(GFP_NOFS))
			goto out_unwind;

		FUNC12(&mp->m_perag_lock);
		if (FUNC9(&mp->m_perag_tree, index, pag)) {
			FUNC0();
			FUNC14(&mp->m_perag_lock);
			FUNC11();
			error = -EEXIST;
			goto out_unwind;
		}
		FUNC14(&mp->m_perag_lock);
		FUNC11();
	}

	/*
	 * If we mount with the inode64 option, or no inode overflows
	 * the legacy 32-bit address space clear the inode32 option.
	 */
	agino = FUNC3(mp, sbp->sb_agblocks - 1, 0);
	ino = FUNC2(mp, agcount - 1, agino);

	if ((mp->m_flags & XFS_MOUNT_SMALL_INUMS) && ino > XFS_MAXINUMBER_32)
		mp->m_flags |= XFS_MOUNT_32BITINODES;
	else
		mp->m_flags &= ~XFS_MOUNT_32BITINODES;

	if (mp->m_flags & XFS_MOUNT_32BITINODES) {
		/*
		 * Calculate how much should be reserved for inodes to meet
		 * the max inode percentage.
		 */
		if (mp->m_maxicount) {
			__uint64_t	icount;

			icount = sbp->sb_dblocks * sbp->sb_imax_pct;
			FUNC4(icount, 100);
			icount += sbp->sb_agblocks - 1;
			FUNC4(icount, sbp->sb_agblocks);
			max_metadata = icount;
		} else {
			max_metadata = agcount;
		}

		for (index = 0; index < agcount; index++) {
			ino = FUNC2(mp, index, agino);
			if (ino > XFS_MAXINUMBER_32) {
				index++;
				break;
			}

			pag = FUNC15(mp, index);
			pag->pagi_inodeok = 1;
			if (index < max_metadata)
				pag->pagf_metadata = 1;
			FUNC16(pag);
		}
	} else {
		for (index = 0; index < agcount; index++) {
			pag = FUNC15(mp, index);
			pag->pagi_inodeok = 1;
			FUNC16(pag);
		}
	}

	if (maxagi)
		*maxagi = index;
	return 0;

out_unwind:
	FUNC5(pag);
	for (; index > first_initialised; index--) {
		pag = FUNC8(&mp->m_perag_tree, index);
		FUNC5(pag);
	}
	return error;
}