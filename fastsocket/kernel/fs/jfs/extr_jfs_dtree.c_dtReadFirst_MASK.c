#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct metapage {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btstack {struct btframe* top; } ;
struct btframe {struct metapage* mp; scalar_t__ index; scalar_t__ bn; } ;
typedef  size_t s8 ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  pxd_t ;
struct TYPE_6__ {int flag; } ;
struct TYPE_7__ {int /*<<< orphan*/ * slot; TYPE_1__ header; } ;
typedef  TYPE_2__ dtpage_t ;
struct TYPE_8__ {int l2bsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btstack*) ; 
 int BT_LEAF ; 
 int /*<<< orphan*/  FUNC1 (struct btstack*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btstack*) ; 
 scalar_t__ FUNC3 (struct btstack*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__,struct metapage*,int,TYPE_2__*,int) ; 
 size_t* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct metapage*) ; 
 int EIO ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct inode *ip, struct btstack * btstack)
{
	int rc = 0;
	s64 bn;
	int psize = 288;	/* initial in-line directory */
	struct metapage *mp;
	dtpage_t *p;
	s8 *stbl;
	struct btframe *btsp;
	pxd_t *xd;

	FUNC0(btstack);	/* reset stack */

	/*
	 *	descend leftmost path of the tree
	 *
	 * by convention, root bn = 0.
	 */
	for (bn = 0;;) {
		FUNC4(ip, bn, mp, psize, p, rc);
		if (rc)
			return rc;

		/*
		 * leftmost leaf page
		 */
		if (p->header.flag & BT_LEAF) {
			/* return leftmost entry */
			btsp = btstack->top;
			btsp->bn = bn;
			btsp->index = 0;
			btsp->mp = mp;

			return 0;
		}

		/*
		 * descend down to leftmost child page
		 */
		if (FUNC3(btstack)) {
			FUNC6(mp);
			FUNC9(ip->i_sb, "dtReadFirst: btstack overrun");
			FUNC2(btstack);
			return -EIO;
		}
		/* push (bn, index) of the parent page/entry */
		FUNC1(btstack, bn, 0);

		/* get the leftmost entry */
		stbl = FUNC5(p);
		xd = (pxd_t *) & p->slot[stbl[0]];

		/* get the child page block address */
		bn = FUNC8(xd);
		psize = FUNC10(xd) << FUNC7(ip->i_sb)->l2bsize;

		/* unpin the parent page */
		FUNC6(mp);
	}
}