#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flag; void* nextindex; void* maxentry; void* prev; void* next; int /*<<< orphan*/  self; } ;
struct TYPE_10__ {TYPE_2__ header; int /*<<< orphan*/ * xad; } ;
typedef  TYPE_3__ xtpage_t ;
typedef  int /*<<< orphan*/  xad_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct xtsplit {int index; int /*<<< orphan*/  addr; int /*<<< orphan*/  len; int /*<<< orphan*/  off; int /*<<< orphan*/  flag; struct pxdlist* pxdlist; struct metapage* mp; } ;
struct TYPE_8__ {size_t offset; int length; } ;
struct xtlock {TYPE_1__ lwm; } ;
struct tlock {int /*<<< orphan*/  lock; } ;
struct pxdlist {size_t npxd; int /*<<< orphan*/ * pxd; } ;
struct metapage {scalar_t__ data; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  pxd_t ;
struct TYPE_11__ {int /*<<< orphan*/  split; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct metapage*,struct inode*) ; 
 int BT_TYPE ; 
 int /*<<< orphan*/  COMMIT_Nolink ; 
 int EDQUOT ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int L2XTSLOTSIZE ; 
 int /*<<< orphan*/  PSIZE ; 
 size_t XTENTRYSTART ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__,struct metapage*,int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 TYPE_3__* FUNC3 (struct inode*,struct metapage*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct metapage*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (size_t) ; 
 void* FUNC8 (scalar_t__) ; 
 struct metapage* FUNC9 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_3__*,...) ; 
 size_t FUNC11 (void*) ; 
 scalar_t__ FUNC12 (void*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct inode*) ; 
 int tlckGROW ; 
 int tlckNEW ; 
 int tlckRELINK ; 
 int tlckXTREE ; 
 struct tlock* FUNC17 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 
 scalar_t__ FUNC18 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int) ; 
 TYPE_4__ xtStat ; 

__attribute__((used)) static int
FUNC20(tid_t tid, struct inode *ip,
	    struct xtsplit * split, struct metapage ** rmpp, s64 * rbnp)
{
	int rc = 0;
	struct metapage *smp;
	xtpage_t *sp;
	struct metapage *rmp;
	xtpage_t *rp;		/* new right page allocated */
	s64 rbn;		/* new right page block number */
	struct metapage *mp;
	xtpage_t *p;
	s64 nextbn;
	int skip, maxentry, middle, righthalf, n;
	xad_t *xad;
	struct pxdlist *pxdlist;
	pxd_t *pxd;
	struct tlock *tlck;
	struct xtlock *sxtlck = NULL, *rxtlck = NULL;
	int quota_allocation = 0;

	smp = split->mp;
	sp = FUNC3(ip, smp);

	FUNC1(xtStat.split);

	pxdlist = split->pxdlist;
	pxd = &pxdlist->pxd[pxdlist->npxd];
	pxdlist->npxd++;
	rbn = FUNC6(pxd);

	/* Allocate blocks to quota. */
	if (FUNC18(ip, FUNC13(pxd))) {
		rc = -EDQUOT;
		goto clean_up;
	}

	quota_allocation += FUNC13(pxd);

	/*
	 * allocate the new right page for the split
	 */
	rmp = FUNC9(ip, rbn, PSIZE, 1);
	if (rmp == NULL) {
		rc = -EIO;
		goto clean_up;
	}

	FUNC10("xtSplitPage: ip:0x%p smp:0x%p rmp:0x%p", ip, smp, rmp);

	FUNC0(rmp, ip);
	/*
	 * action: new page;
	 */

	rp = (xtpage_t *) rmp->data;
	rp->header.self = *pxd;
	rp->header.flag = sp->header.flag & BT_TYPE;
	rp->header.maxentry = sp->header.maxentry;	/* little-endian */
	rp->header.nextindex = FUNC7(XTENTRYSTART);

	FUNC0(smp, ip);
	/* Don't log it if there are no links to the file */
	if (!FUNC16(COMMIT_Nolink, ip)) {
		/*
		 * acquire a transaction lock on the new right page;
		 */
		tlck = FUNC17(tid, ip, rmp, tlckXTREE | tlckNEW);
		rxtlck = (struct xtlock *) & tlck->lock;
		rxtlck->lwm.offset = XTENTRYSTART;
		/*
		 * acquire a transaction lock on the split page
		 */
		tlck = FUNC17(tid, ip, smp, tlckXTREE | tlckGROW);
		sxtlck = (struct xtlock *) & tlck->lock;
	}

	/*
	 * initialize/update sibling pointers of <sp> and <rp>
	 */
	nextbn = FUNC12(sp->header.next);
	rp->header.next = FUNC8(nextbn);
	rp->header.prev = FUNC8(FUNC6(&sp->header.self));
	sp->header.next = FUNC8(rbn);

	skip = split->index;

	/*
	 *	sequential append at tail (after last entry of last page)
	 *
	 * if splitting the last page on a level because of appending
	 * a entry to it (skip is maxentry), it's likely that the access is
	 * sequential. adding an empty page on the side of the level is less
	 * work and can push the fill factor much higher than normal.
	 * if we're wrong it's no big deal -  we will do the split the right
	 * way next time.
	 * (it may look like it's equally easy to do a similar hack for
	 * reverse sorted data, that is, split the tree left, but it's not.
	 * Be my guest.)
	 */
	if (nextbn == 0 && skip == FUNC11(sp->header.maxentry)) {
		/*
		 * acquire a transaction lock on the new/right page;
		 *
		 * action: xad insertion;
		 */
		/* insert entry at the first entry of the new right page */
		xad = &rp->xad[XTENTRYSTART];
		FUNC4(xad, split->flag, split->off, split->len,
			    split->addr);

		rp->header.nextindex = FUNC7(XTENTRYSTART + 1);

		if (!FUNC16(COMMIT_Nolink, ip)) {
			/* rxtlck->lwm.offset = XTENTRYSTART; */
			rxtlck->lwm.length = 1;
		}

		*rmpp = rmp;
		*rbnp = rbn;

		FUNC10("xtSplitPage: sp:0x%p rp:0x%p", sp, rp);
		return 0;
	}

	/*
	 *	non-sequential insert (at possibly middle page)
	 */

	/*
	 * update previous pointer of old next/right page of <sp>
	 */
	if (nextbn != 0) {
		FUNC2(ip, nextbn, mp, PSIZE, p, rc);
		if (rc) {
			FUNC5(rmp);
			goto clean_up;
		}

		FUNC0(mp, ip);
		/*
		 * acquire a transaction lock on the next page;
		 *
		 * action:sibling pointer update;
		 */
		if (!FUNC16(COMMIT_Nolink, ip))
			tlck = FUNC17(tid, ip, mp, tlckXTREE | tlckRELINK);

		p->header.prev = FUNC8(rbn);

		/* sibling page may have been updated previously, or
		 * it may be updated later;
		 */

		FUNC5(mp);
	}

	/*
	 * split the data between the split and new/right pages
	 */
	maxentry = FUNC11(sp->header.maxentry);
	middle = maxentry >> 1;
	righthalf = maxentry - middle;

	/*
	 * skip index in old split/left page - insert into left page:
	 */
	if (skip <= middle) {
		/* move right half of split page to the new right page */
		FUNC14(&rp->xad[XTENTRYSTART], &sp->xad[middle],
			righthalf << L2XTSLOTSIZE);

		/* shift right tail of left half to make room for new entry */
		if (skip < middle)
			FUNC14(&sp->xad[skip + 1], &sp->xad[skip],
				(middle - skip) << L2XTSLOTSIZE);

		/* insert new entry */
		xad = &sp->xad[skip];
		FUNC4(xad, split->flag, split->off, split->len,
			    split->addr);

		/* update page header */
		sp->header.nextindex = FUNC7(middle + 1);
		if (!FUNC16(COMMIT_Nolink, ip)) {
			sxtlck->lwm.offset = (sxtlck->lwm.offset) ?
			    FUNC15(skip, (int)sxtlck->lwm.offset) : skip;
		}

		rp->header.nextindex =
		    FUNC7(XTENTRYSTART + righthalf);
	}
	/*
	 * skip index in new right page - insert into right page:
	 */
	else {
		/* move left head of right half to right page */
		n = skip - middle;
		FUNC14(&rp->xad[XTENTRYSTART], &sp->xad[middle],
			n << L2XTSLOTSIZE);

		/* insert new entry */
		n += XTENTRYSTART;
		xad = &rp->xad[n];
		FUNC4(xad, split->flag, split->off, split->len,
			    split->addr);

		/* move right tail of right half to right page */
		if (skip < maxentry)
			FUNC14(&rp->xad[n + 1], &sp->xad[skip],
				(maxentry - skip) << L2XTSLOTSIZE);

		/* update page header */
		sp->header.nextindex = FUNC7(middle);
		if (!FUNC16(COMMIT_Nolink, ip)) {
			sxtlck->lwm.offset = (sxtlck->lwm.offset) ?
			    FUNC15(middle, (int)sxtlck->lwm.offset) : middle;
		}

		rp->header.nextindex = FUNC7(XTENTRYSTART +
						   righthalf + 1);
	}

	if (!FUNC16(COMMIT_Nolink, ip)) {
		sxtlck->lwm.length = FUNC11(sp->header.nextindex) -
		    sxtlck->lwm.offset;

		/* rxtlck->lwm.offset = XTENTRYSTART; */
		rxtlck->lwm.length = FUNC11(rp->header.nextindex) -
		    XTENTRYSTART;
	}

	*rmpp = rmp;
	*rbnp = rbn;

	FUNC10("xtSplitPage: sp:0x%p rp:0x%p", sp, rp);
	return rc;

      clean_up:

	/* Rollback quota allocation. */
	if (quota_allocation)
		FUNC19(ip, quota_allocation);

	return (rc);
}