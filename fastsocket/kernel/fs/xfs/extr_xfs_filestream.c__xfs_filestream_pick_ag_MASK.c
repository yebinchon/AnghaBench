#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int sb_agblocks; scalar_t__ sb_agcount; } ;
struct TYPE_13__ {TYPE_1__ m_sb; } ;
typedef  TYPE_2__ xfs_mount_t ;
typedef  int xfs_extlen_t ;
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_perag {int pagf_freeblks; int /*<<< orphan*/  pagf_fstrms; int /*<<< orphan*/  pagf_metadata; int /*<<< orphan*/  pagf_init; } ;

/* Variables and functions */
 scalar_t__ NULLAGNUMBER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int) ; 
 int XFS_ALLOC_FLAG_TRYLOCK ; 
 int XFS_PICK_LOWSPACE ; 
 int XFS_PICK_USERDATA ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,struct xfs_perag*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC6 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__) ; 
 struct xfs_perag* FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_perag*) ; 

__attribute__((used)) static int
FUNC10(
	xfs_mount_t	*mp,
	xfs_agnumber_t	startag,
	xfs_agnumber_t	*agp,
	int		flags,
	xfs_extlen_t	minlen)
{
	int		streams, max_streams;
	int		err, trylock, nscan;
	xfs_extlen_t	longest, free, minfree, maxfree = 0;
	xfs_agnumber_t	ag, max_ag = NULLAGNUMBER;
	struct xfs_perag *pag;

	/* 2% of an AG's blocks must be free for it to be chosen. */
	minfree = mp->m_sb.sb_agblocks / 50;

	ag = startag;
	*agp = NULLAGNUMBER;

	/* For the first pass, don't sleep trying to init the per-AG. */
	trylock = XFS_ALLOC_FLAG_TRYLOCK;

	for (nscan = 0; 1; nscan++) {
		pag = FUNC8(mp, ag);
		FUNC2(mp, ag, FUNC3(&pag->pagf_fstrms));

		if (!pag->pagf_init) {
			err = FUNC5(mp, NULL, ag, trylock);
			if (err && !trylock) {
				FUNC9(pag);
				return err;
			}
		}

		/* Might fail sometimes during the 1st pass with trylock set. */
		if (!pag->pagf_init)
			goto next_ag;

		/* Keep track of the AG with the most free blocks. */
		if (pag->pagf_freeblks > maxfree) {
			maxfree = pag->pagf_freeblks;
			max_streams = FUNC3(&pag->pagf_fstrms);
			max_ag = ag;
		}

		/*
		 * The AG reference count does two things: it enforces mutual
		 * exclusion when examining the suitability of an AG in this
		 * loop, and it guards against two filestreams being established
		 * in the same AG as each other.
		 */
		if (FUNC6(mp, ag) > 1) {
			FUNC7(mp, ag);
			goto next_ag;
		}

		longest = FUNC4(mp, pag);
		if (((minlen && longest >= minlen) ||
		     (!minlen && pag->pagf_freeblks >= minfree)) &&
		    (!pag->pagf_metadata || !(flags & XFS_PICK_USERDATA) ||
		     (flags & XFS_PICK_LOWSPACE))) {

			/* Break out, retaining the reference on the AG. */
			free = pag->pagf_freeblks;
			streams = FUNC3(&pag->pagf_fstrms);
			FUNC9(pag);
			*agp = ag;
			break;
		}

		/* Drop the reference on this AG, it's not usable. */
		FUNC7(mp, ag);
next_ag:
		FUNC9(pag);
		/* Move to the next AG, wrapping to AG 0 if necessary. */
		if (++ag >= mp->m_sb.sb_agcount)
			ag = 0;

		/* If a full pass of the AGs hasn't been done yet, continue. */
		if (ag != startag)
			continue;

		/* Allow sleeping in xfs_alloc_pagf_init() on the 2nd pass. */
		if (trylock != 0) {
			trylock = 0;
			continue;
		}

		/* Finally, if lowspace wasn't set, set it for the 3rd pass. */
		if (!(flags & XFS_PICK_LOWSPACE)) {
			flags |= XFS_PICK_LOWSPACE;
			continue;
		}

		/*
		 * Take the AG with the most free space, regardless of whether
		 * it's already in use by another filestream.
		 */
		if (max_ag != NULLAGNUMBER) {
			FUNC6(mp, max_ag);
			FUNC0(mp, max_ag, maxfree);
			streams = max_streams;
			free = maxfree;
			*agp = max_ag;
			break;
		}

		/* take AG 0 if none matched */
		FUNC0(mp, max_ag, maxfree);
		*agp = 0;
		return 0;
	}

	FUNC1(mp, startag, *agp, streams, free, nscan, flags);

	return 0;
}