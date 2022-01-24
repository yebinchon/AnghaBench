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
struct ubifs_znode {scalar_t__ level; int child_cnt; struct ubifs_zbranch* zbranch; int /*<<< orphan*/  flags; int /*<<< orphan*/ * cnext; } ;
struct ubifs_zbranch {TYPE_1__* znode; } ;
struct ubifs_info {int /*<<< orphan*/  dirty_zn_cnt; int /*<<< orphan*/  max_znode_sz; } ;
struct TYPE_2__ {struct ubifs_znode* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  COW_ZNODE ; 
 int /*<<< orphan*/  DIRTY_ZNODE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct ubifs_znode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  OBSOLETE_ZNODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ubifs_znode* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_znode*,struct ubifs_znode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct ubifs_znode *FUNC9(struct ubifs_info *c,
				      struct ubifs_znode *znode)
{
	struct ubifs_znode *zn;

	zn = FUNC4(c->max_znode_sz, GFP_NOFS);
	if (FUNC8(!zn))
		return FUNC0(-ENOMEM);

	FUNC5(zn, znode, c->max_znode_sz);
	zn->cnext = NULL;
	FUNC2(DIRTY_ZNODE, &zn->flags);
	FUNC1(COW_ZNODE, &zn->flags);

	FUNC7(!FUNC6(OBSOLETE_ZNODE, &znode->flags));
	FUNC2(OBSOLETE_ZNODE, &znode->flags);

	if (znode->level != 0) {
		int i;
		const int n = zn->child_cnt;

		/* The children now have new parent */
		for (i = 0; i < n; i++) {
			struct ubifs_zbranch *zbr = &zn->zbranch[i];

			if (zbr->znode)
				zbr->znode->parent = zn;
		}
	}

	FUNC3(&c->dirty_zn_cnt);
	return zn;
}