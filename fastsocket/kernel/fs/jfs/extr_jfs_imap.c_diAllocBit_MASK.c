#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct metapage {scalar_t__ data; } ;
struct inomap {int /*<<< orphan*/  im_numfree; TYPE_2__* im_agctl; TYPE_1__* im_ipimap; } ;
struct iag {int /*<<< orphan*/  nfreeinos; int /*<<< orphan*/  inofreeback; int /*<<< orphan*/  inofreefwd; int /*<<< orphan*/ * inosmap; int /*<<< orphan*/ * wmap; int /*<<< orphan*/ * inoext; int /*<<< orphan*/ * pmap; int /*<<< orphan*/  agstart; } ;
struct TYPE_4__ {int inofree; int numfree; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int EXTSPERSUM ; 
 int HIGHORDER ; 
 int INOSPEREXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int L2EXTSPERSUM ; 
 int L2INOSPEREXT ; 
 int ONES ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct inomap*,int,struct metapage**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC11 (struct metapage*) ; 

__attribute__((used)) static int FUNC12(struct inomap * imap, struct iag * iagp, int ino)
{
	int extno, bitno, agno, sword, rc;
	struct metapage *amp = NULL, *bmp = NULL;
	struct iag *aiagp = NULL, *biagp = NULL;
	u32 mask;

	/* check if this is the last free inode within the iag.
	 * if so, it will have to be removed from the ag free
	 * inode list, so get the iags preceeding and following
	 * it on the list.
	 */
	if (iagp->nfreeinos == FUNC4(1)) {
		if ((int) FUNC8(iagp->inofreefwd) >= 0) {
			if ((rc =
			     FUNC5(imap, FUNC8(iagp->inofreefwd),
				       &amp)))
				return (rc);
			aiagp = (struct iag *) amp->data;
		}

		if ((int) FUNC8(iagp->inofreeback) >= 0) {
			if ((rc =
			     FUNC5(imap,
				       FUNC8(iagp->inofreeback),
				       &bmp))) {
				if (amp)
					FUNC10(amp);
				return (rc);
			}
			biagp = (struct iag *) bmp->data;
		}
	}

	/* get the ag number, extent number, inode number within
	 * the extent.
	 */
	agno = FUNC0(FUNC9(iagp->agstart), FUNC1(imap->im_ipimap->i_sb));
	extno = ino >> L2INOSPEREXT;
	bitno = ino & (INOSPEREXT - 1);

	/* compute the mask for setting the map.
	 */
	mask = HIGHORDER >> bitno;

	/* the inode should be free and backed.
	 */
	if (((FUNC8(iagp->pmap[extno]) & mask) != 0) ||
	    ((FUNC8(iagp->wmap[extno]) & mask) != 0) ||
	    (FUNC2(&iagp->inoext[extno]) == 0)) {
		if (amp)
			FUNC10(amp);
		if (bmp)
			FUNC10(bmp);

		FUNC6(imap->im_ipimap->i_sb,
			  "diAllocBit: iag inconsistent");
		return -EIO;
	}

	/* mark the inode as allocated in the working map.
	 */
	iagp->wmap[extno] |= FUNC4(mask);

	/* check if all inodes within the extent are now
	 * allocated.  if so, update the free inode summary
	 * map to reflect this.
	 */
	if (iagp->wmap[extno] == FUNC4(ONES)) {
		sword = extno >> L2EXTSPERSUM;
		bitno = extno & (EXTSPERSUM - 1);
		iagp->inosmap[sword] |= FUNC4(HIGHORDER >> bitno);
	}

	/* if this was the last free inode in the iag, remove the
	 * iag from the ag free inode list.
	 */
	if (iagp->nfreeinos == FUNC4(1)) {
		if (amp) {
			aiagp->inofreeback = iagp->inofreeback;
			FUNC11(amp);
		}

		if (bmp) {
			biagp->inofreefwd = iagp->inofreefwd;
			FUNC11(bmp);
		} else {
			imap->im_agctl[agno].inofree =
			    FUNC8(iagp->inofreefwd);
		}
		iagp->inofreefwd = iagp->inofreeback = FUNC4(-1);
	}

	/* update the free inode count at the iag, ag, inode
	 * map levels.
	 */
	FUNC7(&iagp->nfreeinos, -1);
	imap->im_agctl[agno].numfree -= 1;
	FUNC3(&imap->im_numfree);

	return (0);
}