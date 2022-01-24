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
struct ubifs_nnode {int iip; struct ubifs_nnode* parent; scalar_t__ level; void* num; struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {int lnum; int offs; struct ubifs_nnode* nnode; } ;
struct ubifs_info {int lpt_lnum; int lpt_offs; scalar_t__ lpt_hght; struct ubifs_nnode* nroot; scalar_t__ big_lpt; int /*<<< orphan*/  nnode_sz; int /*<<< orphan*/  ubi; void* lpt_nod_buf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 void* FUNC0 (struct ubifs_info*,struct ubifs_nnode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_nnode*) ; 
 struct ubifs_nnode* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int) ; 
 int FUNC5 (struct ubifs_info*,void*,struct ubifs_nnode*) ; 
 int FUNC6 (struct ubifs_info*,struct ubifs_nnode*,struct ubifs_nnode*,int) ; 

int FUNC7(struct ubifs_info *c, struct ubifs_nnode *parent, int iip)
{
	struct ubifs_nbranch *branch = NULL;
	struct ubifs_nnode *nnode = NULL;
	void *buf = c->lpt_nod_buf;
	int err, lnum, offs;

	if (parent) {
		branch = &parent->nbranch[iip];
		lnum = branch->lnum;
		offs = branch->offs;
	} else {
		lnum = c->lpt_lnum;
		offs = c->lpt_offs;
	}
	nnode = FUNC2(sizeof(struct ubifs_nnode), GFP_NOFS);
	if (!nnode) {
		err = -ENOMEM;
		goto out;
	}
	if (lnum == 0) {
		/*
		 * This nnode was not written which just means that the LEB
		 * properties in the subtree below it describe empty LEBs. We
		 * make the nnode as though we had read it, which in fact means
		 * doing almost nothing.
		 */
		if (c->big_lpt)
			nnode->num = FUNC0(c, parent, iip);
	} else {
		err = FUNC3(c->ubi, lnum, buf, offs, c->nnode_sz);
		if (err)
			goto out;
		err = FUNC5(c, buf, nnode);
		if (err)
			goto out;
	}
	err = FUNC6(c, nnode, parent, iip);
	if (err)
		goto out;
	if (!c->big_lpt)
		nnode->num = FUNC0(c, parent, iip);
	if (parent) {
		branch->nnode = nnode;
		nnode->level = parent->level - 1;
	} else {
		c->nroot = nnode;
		nnode->level = c->lpt_hght;
	}
	nnode->parent = parent;
	nnode->iip = iip;
	return 0;

out:
	FUNC4("error %d reading nnode at %d:%d", err, lnum, offs);
	FUNC1(nnode);
	return err;
}