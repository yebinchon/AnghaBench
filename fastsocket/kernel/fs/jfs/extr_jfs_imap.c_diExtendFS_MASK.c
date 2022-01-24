#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct metapage {scalar_t__ data; } ;
struct inomap {int im_nextiag; int /*<<< orphan*/  im_numfree; int /*<<< orphan*/  im_numinos; TYPE_1__* im_agctl; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct iag {scalar_t__ iagnum; scalar_t__ nfreeexts; scalar_t__ nfreeinos; scalar_t__ inofreeback; scalar_t__ extfreeback; scalar_t__ extfreefwd; scalar_t__ inofreefwd; int /*<<< orphan*/  agstart; } ;
struct bmap {int db_agl2size; } ;
typedef  int s64 ;
struct TYPE_6__ {struct inomap* i_imap; } ;
struct TYPE_5__ {struct bmap* bmap; } ;
struct TYPE_4__ {int inofree; int extfree; scalar_t__ numfree; scalar_t__ numinos; } ;

/* Variables and functions */
 int EIO ; 
 int EXTSPERIAG ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int L2INOSPEREXT ; 
 int MAXAG ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct inomap*,int,struct metapage**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC10 (struct metapage*) ; 

int FUNC11(struct inode *ipimap, struct inode *ipbmap)
{
	int rc, rcx = 0;
	struct inomap *imap = FUNC0(ipimap)->i_imap;
	struct iag *iagp = NULL, *hiagp = NULL;
	struct bmap *mp = FUNC1(ipbmap->i_sb)->bmap;
	struct metapage *bp, *hbp;
	int i, n, head;
	int numinos, xnuminos = 0, xnumfree = 0;
	s64 agstart;

	FUNC6("diExtendFS: nextiag:%d numinos:%d numfree:%d",
		   imap->im_nextiag, FUNC2(&imap->im_numinos),
		   FUNC2(&imap->im_numfree));

	/*
	 *	reconstruct imap
	 *
	 * coalesce contiguous k (newAGSize/oldAGSize) AGs;
	 * i.e., (AGi, ..., AGj) where i = k*n and j = k*(n+1) - 1 to AGn;
	 * note: new AG size = old AG size * (2**x).
	 */

	/* init per AG control information im_agctl[] */
	for (i = 0; i < MAXAG; i++) {
		imap->im_agctl[i].inofree = -1;
		imap->im_agctl[i].extfree = -1;
		imap->im_agctl[i].numinos = 0;	/* number of backed inodes */
		imap->im_agctl[i].numfree = 0;	/* number of free backed inodes */
	}

	/*
	 *	process each iag page of the map.
	 *
	 * rebuild AG Free Inode List, AG Free Inode Extent List;
	 */
	for (i = 0; i < imap->im_nextiag; i++) {
		if ((rc = FUNC4(imap, i, &bp))) {
			rcx = rc;
			continue;
		}
		iagp = (struct iag *) bp->data;
		if (FUNC7(iagp->iagnum) != i) {
			FUNC9(bp);
			FUNC5(ipimap->i_sb,
				  "diExtendFs: unexpected value of iagnum");
			return -EIO;
		}

		/* leave free iag in the free iag list */
		if (iagp->nfreeexts == FUNC3(EXTSPERIAG)) {
			FUNC9(bp);
			continue;
		}

		/* agstart that computes to the same ag is treated as same; */
		agstart = FUNC8(iagp->agstart);
		/* iagp->agstart = agstart & ~(mp->db_agsize - 1); */
		n = agstart >> mp->db_agl2size;

		/* compute backed inodes */
		numinos = (EXTSPERIAG - FUNC7(iagp->nfreeexts))
		    << L2INOSPEREXT;
		if (numinos > 0) {
			/* merge AG backed inodes */
			imap->im_agctl[n].numinos += numinos;
			xnuminos += numinos;
		}

		/* if any backed free inodes, insert at AG free inode list */
		if ((int) FUNC7(iagp->nfreeinos) > 0) {
			if ((head = imap->im_agctl[n].inofree) == -1) {
				iagp->inofreefwd = FUNC3(-1);
				iagp->inofreeback = FUNC3(-1);
			} else {
				if ((rc = FUNC4(imap, head, &hbp))) {
					rcx = rc;
					goto nextiag;
				}
				hiagp = (struct iag *) hbp->data;
				hiagp->inofreeback = iagp->iagnum;
				iagp->inofreefwd = FUNC3(head);
				iagp->inofreeback = FUNC3(-1);
				FUNC10(hbp);
			}

			imap->im_agctl[n].inofree =
			    FUNC7(iagp->iagnum);

			/* merge AG backed free inodes */
			imap->im_agctl[n].numfree +=
			    FUNC7(iagp->nfreeinos);
			xnumfree += FUNC7(iagp->nfreeinos);
		}

		/* if any free extents, insert at AG free extent list */
		if (FUNC7(iagp->nfreeexts) > 0) {
			if ((head = imap->im_agctl[n].extfree) == -1) {
				iagp->extfreefwd = FUNC3(-1);
				iagp->extfreeback = FUNC3(-1);
			} else {
				if ((rc = FUNC4(imap, head, &hbp))) {
					rcx = rc;
					goto nextiag;
				}
				hiagp = (struct iag *) hbp->data;
				hiagp->extfreeback = iagp->iagnum;
				iagp->extfreefwd = FUNC3(head);
				iagp->extfreeback = FUNC3(-1);
				FUNC10(hbp);
			}

			imap->im_agctl[n].extfree =
			    FUNC7(iagp->iagnum);
		}

	      nextiag:
		FUNC10(bp);
	}

	if (xnuminos != FUNC2(&imap->im_numinos) ||
	    xnumfree != FUNC2(&imap->im_numfree)) {
		FUNC5(ipimap->i_sb,
			  "diExtendFs: numinos or numfree incorrect");
		return -EIO;
	}

	return rcx;
}