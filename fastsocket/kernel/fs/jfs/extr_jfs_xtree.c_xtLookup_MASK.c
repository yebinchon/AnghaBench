#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* xad; } ;
typedef  TYPE_1__ xtpage_t ;
struct TYPE_9__ {int flag; } ;
typedef  TYPE_2__ xad_t ;
typedef  int u64 ;
struct metapage {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; scalar_t__ i_size; } ;
struct btstack {int /*<<< orphan*/  top; } ;
typedef  int s64 ;
typedef  int s32 ;
struct TYPE_10__ {int bsize; int l2bsize; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,int,struct metapage*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct metapage*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct inode*,int,int*,int*,struct btstack*,int /*<<< orphan*/ ) ; 

int FUNC9(struct inode *ip, s64 lstart,
	     s64 llen, int *pflag, s64 * paddr, s32 * plen, int no_check)
{
	int rc = 0;
	struct btstack btstack;
	int cmp;
	s64 bn;
	struct metapage *mp;
	xtpage_t *p;
	int index;
	xad_t *xad;
	s64 next, size, xoff, xend;
	int xlen;
	s64 xaddr;

	*paddr = 0;
	*plen = llen;

	if (!no_check) {
		/* is lookup offset beyond eof ? */
		size = ((u64) ip->i_size + (FUNC0(ip->i_sb)->bsize - 1)) >>
		    FUNC0(ip->i_sb)->l2bsize;
		if (lstart >= size)
			return 0;
	}

	/*
	 * search for the xad entry covering the logical extent
	 */
//search:
	if ((rc = FUNC8(ip, lstart, &next, &cmp, &btstack, 0))) {
		FUNC4("xtLookup: xtSearch returned %d", rc);
		return rc;
	}

	/*
	 *	compute the physical extent covering logical extent
	 *
	 * N.B. search may have failed (e.g., hole in sparse file),
	 * and returned the index of the next entry.
	 */
	/* retrieve search result */
	FUNC1(ip, btstack.top, bn, mp, p, index);

	/* is xad found covering start of logical extent ?
	 * lstart is a page start address,
	 * i.e., lstart cannot start in a hole;
	 */
	if (cmp) {
		if (next)
			*plen = FUNC6(next - lstart, llen);
		goto out;
	}

	/*
	 * lxd covered by xad
	 */
	xad = &p->xad[index];
	xoff = FUNC7(xad);
	xlen = FUNC5(xad);
	xend = xoff + xlen;
	xaddr = FUNC3(xad);

	/* initialize new pxd */
	*pflag = xad->flag;
	*paddr = xaddr + (lstart - xoff);
	/* a page must be fully covered by an xad */
	*plen = FUNC6(xend - lstart, llen);

      out:
	FUNC2(mp);

	return rc;
}