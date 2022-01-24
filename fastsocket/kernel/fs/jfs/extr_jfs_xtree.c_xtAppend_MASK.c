#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  nextindex; int /*<<< orphan*/  maxentry; } ;
struct TYPE_8__ {TYPE_1__ header; int /*<<< orphan*/ * xad; } ;
typedef  TYPE_3__ xtpage_t ;
typedef  int /*<<< orphan*/  xad_t ;
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  tid_t ;
struct xtsplit {int index; int flag; int len; void* addr; void* off; struct metapage* mp; struct pxdlist* pxdlist; } ;
struct TYPE_7__ {int offset; int length; } ;
struct xtlock {TYPE_2__ lwm; } ;
struct tlock {int /*<<< orphan*/  lock; } ;
struct pxdlist {scalar_t__ maxnpxd; int /*<<< orphan*/ * pxd; scalar_t__ npxd; } ;
struct metapage {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btstack {int nsplit; int /*<<< orphan*/  top; } ;
typedef  void* s64 ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  pxd_t ;
struct TYPE_9__ {int nbperpage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct metapage*,struct inode*) ; 
 int EEXIST ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int XAD_NEW ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ,void*,struct metapage*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  XT_INSERT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,void*,int,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct metapage*) ; 
 int FUNC7 (struct inode*,void*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int) ; 
 int tlckGROW ; 
 int tlckXTREE ; 
 struct tlock* FUNC13 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 
 int FUNC14 (struct inode*,void*,void**,int*,struct btstack*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct inode*,struct xtsplit*,struct btstack*) ; 

int FUNC16(tid_t tid,		/* transaction id */
	     struct inode *ip, int xflag, s64 xoff, s32 maxblocks,
	     s32 * xlenp,	/* (in/out) */
	     s64 * xaddrp,	/* (in/out) */
	     int flag)
{
	int rc = 0;
	struct metapage *mp;	/* meta-page buffer */
	xtpage_t *p;		/* base B+-tree index page */
	s64 bn, xaddr;
	int index, nextindex;
	struct btstack btstack;	/* traverse stack */
	struct xtsplit split;	/* split information */
	xad_t *xad;
	int cmp;
	struct tlock *tlck;
	struct xtlock *xtlck;
	int nsplit, nblocks, xlen;
	struct pxdlist pxdlist;
	pxd_t *pxd;
	s64 next;

	xaddr = *xaddrp;
	xlen = *xlenp;
	FUNC9("xtAppend: xoff:0x%lx maxblocks:%d xlen:%d xaddr:0x%lx",
		 (ulong) xoff, maxblocks, xlen, (ulong) xaddr);

	/*
	 *	search for the entry location at which to insert:
	 *
	 * xtFastSearch() and xtSearch() both returns (leaf page
	 * pinned, index at which to insert).
	 * n.b. xtSearch() may return index of maxentry of
	 * the full page.
	 */
	if ((rc = FUNC14(ip, xoff, &next, &cmp, &btstack, XT_INSERT)))
		return rc;

	/* retrieve search result */
	FUNC4(ip, btstack.top, bn, mp, p, index);

	if (cmp == 0) {
		rc = -EEXIST;
		goto out;
	}

	if (next)
		xlen = FUNC12(xlen, (int)(next - xoff));
//insert:
	/*
	 *	insert entry for new extent
	 */
	xflag |= XAD_NEW;

	/*
	 *	if the leaf page is full, split the page and
	 *	propagate up the router entry for the new page from split
	 *
	 * The xtSplitUp() will insert the entry and unpin the leaf page.
	 */
	nextindex = FUNC11(p->header.nextindex);
	if (nextindex < FUNC11(p->header.maxentry))
		goto insertLeaf;

	/*
	 * allocate new index blocks to cover index page split(s)
	 */
	nsplit = btstack.nsplit;
	split.pxdlist = &pxdlist;
	pxdlist.maxnpxd = pxdlist.npxd = 0;
	pxd = &pxdlist.pxd[0];
	nblocks = FUNC1(ip->i_sb)->nbperpage;
	for (; nsplit > 0; nsplit--, pxd++, xaddr += nblocks, maxblocks -= nblocks) {
		if ((rc = FUNC7(ip, xaddr, (s64) nblocks)) == 0) {
			FUNC2(pxd, xaddr);
			FUNC3(pxd, nblocks);

			pxdlist.maxnpxd++;

			continue;
		}

		/* undo allocation */

		goto out;
	}

	xlen = FUNC12(xlen, maxblocks);

	/*
	 * allocate data extent requested
	 */
	if ((rc = FUNC7(ip, xaddr, (s64) xlen)))
		goto out;

	split.mp = mp;
	split.index = index;
	split.flag = xflag;
	split.off = xoff;
	split.len = xlen;
	split.addr = xaddr;
	if ((rc = FUNC15(tid, ip, &split, &btstack))) {
		/* undo data extent allocation */
		FUNC8(ip, *xaddrp, (s64) * xlenp);

		return rc;
	}

	*xaddrp = xaddr;
	*xlenp = xlen;
	return 0;

	/*
	 *	insert the new entry into the leaf page
	 */
      insertLeaf:
	/*
	 * allocate data extent requested
	 */
	if ((rc = FUNC7(ip, xaddr, (s64) xlen)))
		goto out;

	FUNC0(mp, ip);
	/*
	 * acquire a transaction lock on the leaf page;
	 *
	 * action: xad insertion/extension;
	 */
	tlck = FUNC13(tid, ip, mp, tlckXTREE | tlckGROW);
	xtlck = (struct xtlock *) & tlck->lock;

	/* insert the new entry: mark the entry NEW */
	xad = &p->xad[index];
	FUNC5(xad, xflag, xoff, xlen, xaddr);

	/* advance next available entry index */
	FUNC10(&p->header.nextindex, 1);

	xtlck->lwm.offset =
	    (xtlck->lwm.offset) ? FUNC12(index,(int) xtlck->lwm.offset) : index;
	xtlck->lwm.length = FUNC11(p->header.nextindex) -
	    xtlck->lwm.offset;

	*xaddrp = xaddr;
	*xlenp = xlen;

      out:
	/* unpin the leaf page */
	FUNC6(mp);

	return rc;
}