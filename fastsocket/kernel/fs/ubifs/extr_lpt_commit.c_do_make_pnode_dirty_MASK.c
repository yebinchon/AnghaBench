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
struct ubifs_pnode {struct ubifs_nnode* parent; int /*<<< orphan*/  flags; } ;
struct ubifs_nnode {struct ubifs_nnode* parent; int /*<<< orphan*/  flags; } ;
struct ubifs_info {int dirty_pn_cnt; int dirty_nn_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY_CNODE ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,struct ubifs_pnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,struct ubifs_nnode*) ; 

__attribute__((used)) static void FUNC3(struct ubifs_info *c, struct ubifs_pnode *pnode)
{
	/* Assumes cnext list is empty i.e. not called during commit */
	if (!FUNC1(DIRTY_CNODE, &pnode->flags)) {
		struct ubifs_nnode *nnode;

		c->dirty_pn_cnt += 1;
		FUNC0(c, pnode);
		/* Mark parent and ancestors dirty too */
		nnode = pnode->parent;
		while (nnode) {
			if (!FUNC1(DIRTY_CNODE, &nnode->flags)) {
				c->dirty_nn_cnt += 1;
				FUNC2(c, nnode);
				nnode = nnode->parent;
			} else
				break;
		}
	}
}