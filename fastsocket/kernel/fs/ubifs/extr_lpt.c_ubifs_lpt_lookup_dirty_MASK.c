#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ubifs_pnode {struct ubifs_lprops* lprops; int /*<<< orphan*/  flags; } ;
struct ubifs_nnode {struct ubifs_lprops* lprops; int /*<<< orphan*/  flags; } ;
struct ubifs_lprops {int /*<<< orphan*/  flags; int /*<<< orphan*/  dirty; int /*<<< orphan*/  free; } ;
struct ubifs_info {int main_first; int lpt_hght; struct ubifs_pnode* nroot; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY_CNODE ; 
 struct ubifs_lprops* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ubifs_pnode*) ; 
 int FUNC2 (struct ubifs_pnode*) ; 
 int UBIFS_LPT_FANOUT ; 
 int UBIFS_LPT_FANOUT_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ubifs_pnode* FUNC4 (struct ubifs_info*,struct ubifs_pnode*) ; 
 struct ubifs_pnode* FUNC5 (struct ubifs_info*,struct ubifs_pnode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct ubifs_pnode* FUNC8 (struct ubifs_info*,struct ubifs_pnode*,int) ; 
 struct ubifs_pnode* FUNC9 (struct ubifs_info*,struct ubifs_pnode*,int) ; 
 int FUNC10 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct ubifs_lprops *FUNC11(struct ubifs_info *c, int lnum)
{
	int err, i, h, iip, shft;
	struct ubifs_nnode *nnode;
	struct ubifs_pnode *pnode;

	if (!c->nroot) {
		err = FUNC10(c, NULL, 0);
		if (err)
			return FUNC0(err);
	}
	nnode = c->nroot;
	nnode = FUNC4(c, nnode);
	if (FUNC1(nnode))
		return FUNC0(FUNC2(nnode));
	i = lnum - c->main_first;
	shft = c->lpt_hght * UBIFS_LPT_FANOUT_SHIFT;
	for (h = 1; h < c->lpt_hght; h++) {
		iip = ((i >> shft) & (UBIFS_LPT_FANOUT - 1));
		shft -= UBIFS_LPT_FANOUT_SHIFT;
		nnode = FUNC8(c, nnode, iip);
		if (FUNC1(nnode))
			return FUNC0(FUNC2(nnode));
		nnode = FUNC4(c, nnode);
		if (FUNC1(nnode))
			return FUNC0(FUNC2(nnode));
	}
	iip = ((i >> shft) & (UBIFS_LPT_FANOUT - 1));
	shft -= UBIFS_LPT_FANOUT_SHIFT;
	pnode = FUNC9(c, nnode, iip);
	if (FUNC1(pnode))
		return FUNC0(FUNC2(pnode));
	pnode = FUNC5(c, pnode);
	if (FUNC1(pnode))
		return FUNC0(FUNC2(pnode));
	iip = (i & (UBIFS_LPT_FANOUT - 1));
	FUNC3("LEB %d, free %d, dirty %d, flags %d", lnum,
	       pnode->lprops[iip].free, pnode->lprops[iip].dirty,
	       pnode->lprops[iip].flags);
	FUNC7(FUNC6(DIRTY_CNODE, &pnode->flags));
	return &pnode->lprops[iip];
}