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
struct ubifs_nnode {size_t iip; struct ubifs_nnode* parent; int /*<<< orphan*/  flags; struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {int lnum; int offs; } ;
struct ubifs_info {int lpt_lnum; int lpt_offs; int dirty_nn_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY_CNODE ; 
 scalar_t__ FUNC0 (struct ubifs_nnode*) ; 
 int FUNC1 (struct ubifs_nnode*) ; 
 struct ubifs_nnode* FUNC2 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,struct ubifs_nnode*) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c, int node_num, int lnum,
			    int offs)
{
	struct ubifs_nnode *nnode;

	nnode = FUNC2(c, node_num);
	if (FUNC0(nnode))
		return FUNC1(nnode);
	if (nnode->parent) {
		struct ubifs_nbranch *branch;

		branch = &nnode->parent->nbranch[nnode->iip];
		if (branch->lnum != lnum || branch->offs != offs)
			return 0; /* nnode is obsolete */
	} else if (c->lpt_lnum != lnum || c->lpt_offs != offs)
			return 0; /* nnode is obsolete */
	/* Assumes cnext list is empty i.e. not called during commit */
	if (!FUNC3(DIRTY_CNODE, &nnode->flags)) {
		c->dirty_nn_cnt += 1;
		FUNC4(c, nnode);
		/* Mark parent and ancestors dirty too */
		nnode = nnode->parent;
		while (nnode) {
			if (!FUNC3(DIRTY_CNODE, &nnode->flags)) {
				c->dirty_nn_cnt += 1;
				FUNC4(c, nnode);
				nnode = nnode->parent;
			} else
				break;
		}
	}
	return 0;
}