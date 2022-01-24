#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ubifs_nnode {TYPE_1__* nbranch; } ;
struct ubifs_cnode {int iip; scalar_t__ level; int /*<<< orphan*/  flags; struct ubifs_nnode* parent; } ;
struct TYPE_2__ {struct ubifs_cnode* cnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY_CNODE ; 
 int UBIFS_LPT_FANOUT ; 
 struct ubifs_cnode* FUNC0 (struct ubifs_nnode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_cnode*) ; 

__attribute__((used)) static struct ubifs_cnode *FUNC3(struct ubifs_cnode *cnode)
{
	struct ubifs_nnode *nnode;
	int i;

	FUNC2(cnode);
	nnode = cnode->parent;
	if (!nnode)
		return NULL;
	for (i = cnode->iip + 1; i < UBIFS_LPT_FANOUT; i++) {
		cnode = nnode->nbranch[i].cnode;
		if (cnode && FUNC1(DIRTY_CNODE, &cnode->flags)) {
			if (cnode->level == 0)
				return cnode; /* cnode is a pnode */
			/* cnode is a nnode */
			return FUNC0((struct ubifs_nnode *)cnode);
		}
	}
	return (struct ubifs_cnode *)nnode;
}