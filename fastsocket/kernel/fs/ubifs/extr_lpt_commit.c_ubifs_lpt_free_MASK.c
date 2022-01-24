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
struct ubifs_nnode {TYPE_1__* nbranch; } ;
struct TYPE_6__ {int /*<<< orphan*/ * arr; } ;
struct ubifs_info {int /*<<< orphan*/ * lpt_nod_buf; int /*<<< orphan*/ * ltab; int /*<<< orphan*/ * nroot; TYPE_3__ dirty_idx; TYPE_2__* lpt_heap; int /*<<< orphan*/ * lsave; int /*<<< orphan*/ * lpt_buf; int /*<<< orphan*/ * ltab_cmt; } ;
struct TYPE_5__ {int /*<<< orphan*/ * arr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * nnode; } ;

/* Variables and functions */
 int LPROPS_HEAP_CNT ; 
 int UBIFS_LPT_FANOUT ; 
 struct ubifs_nnode* FUNC0 (struct ubifs_info*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ubifs_nnode* FUNC3 (struct ubifs_info*,struct ubifs_nnode*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ubifs_info *c, int wr_only)
{
	struct ubifs_nnode *nnode;
	int i, hght;

	/* Free write-only things first */

	FUNC1(c); /* Leftover from a failed commit */

	FUNC4(c->ltab_cmt);
	c->ltab_cmt = NULL;
	FUNC4(c->lpt_buf);
	c->lpt_buf = NULL;
	FUNC2(c->lsave);
	c->lsave = NULL;

	if (wr_only)
		return;

	/* Now free the rest */

	nnode = FUNC0(c, &hght);
	while (nnode) {
		for (i = 0; i < UBIFS_LPT_FANOUT; i++)
			FUNC2(nnode->nbranch[i].nnode);
		nnode = FUNC3(c, nnode, &hght);
	}
	for (i = 0; i < LPROPS_HEAP_CNT; i++)
		FUNC2(c->lpt_heap[i].arr);
	FUNC2(c->dirty_idx.arr);
	FUNC2(c->nroot);
	FUNC4(c->ltab);
	FUNC2(c->lpt_nod_buf);
}