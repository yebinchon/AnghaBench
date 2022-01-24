#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ubifs_znode {scalar_t__ level; int child_cnt; int iip; int /*<<< orphan*/  flags; scalar_t__ cnext; struct ubifs_znode* parent; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; TYPE_1__* znode; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {struct ubifs_znode* znode; int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; } ;
struct ubifs_info {int fanout; int /*<<< orphan*/  clean_zn_cnt; int /*<<< orphan*/  dirty_zn_cnt; TYPE_2__ zroot; } ;
struct TYPE_3__ {int iip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DIRTY_ZNODE ; 
 scalar_t__ FUNC1 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  OBSOLETE_ZNODE ; 
 int FUNC2 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 struct ubifs_znode* FUNC8 (struct ubifs_info*,struct ubifs_zbranch*) ; 
 struct ubifs_znode* FUNC9 (struct ubifs_info*,struct ubifs_znode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_zbranch*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  ubifs_clean_zn_cnt ; 
 int FUNC17 (struct ubifs_znode*) ; 

__attribute__((used)) static int FUNC18(struct ubifs_info *c, struct ubifs_znode *znode, int n)
{
	struct ubifs_zbranch *zbr;
	struct ubifs_znode *zp;
	int i, err;

	/* Delete without merge for now */
	FUNC16(znode->level == 0);
	FUNC16(n >= 0 && n < c->fanout);
	FUNC7("deleting %s", FUNC0(&znode->zbranch[n].key));

	zbr = &znode->zbranch[n];
	FUNC13(zbr);

	err = FUNC15(c, zbr->lnum, zbr->len);
	if (err) {
		FUNC6(c, znode);
		return err;
	}

	/* We do not "gap" zbranch slots */
	for (i = n; i < znode->child_cnt - 1; i++)
		znode->zbranch[i] = znode->zbranch[i + 1];
	znode->child_cnt -= 1;

	if (znode->child_cnt > 0)
		return 0;

	/*
	 * This was the last zbranch, we have to delete this znode from the
	 * parent.
	 */

	do {
		FUNC16(!FUNC14(OBSOLETE_ZNODE, &znode->flags));
		FUNC16(FUNC17(znode));

		zp = znode->parent;
		n = znode->iip;

		FUNC4(&c->dirty_zn_cnt);

		err = FUNC11(c, znode);
		if (err)
			return err;

		if (znode->cnext) {
			FUNC3(OBSOLETE_ZNODE, &znode->flags);
			FUNC5(&c->clean_zn_cnt);
			FUNC5(&ubifs_clean_zn_cnt);
		} else
			FUNC12(znode);
		znode = zp;
	} while (znode->child_cnt == 1); /* while removing last child */

	/* Remove from znode, entry n - 1 */
	znode->child_cnt -= 1;
	FUNC16(znode->level != 0);
	for (i = n; i < znode->child_cnt; i++) {
		znode->zbranch[i] = znode->zbranch[i + 1];
		if (znode->zbranch[i].znode)
			znode->zbranch[i].znode->iip = i;
	}

	/*
	 * If this is the root and it has only 1 child then
	 * collapse the tree.
	 */
	if (!znode->parent) {
		while (znode->child_cnt == 1 && znode->level != 0) {
			zp = znode;
			zbr = &znode->zbranch[0];
			znode = FUNC9(c, znode, 0);
			if (FUNC1(znode))
				return FUNC2(znode);
			znode = FUNC8(c, zbr);
			if (FUNC1(znode))
				return FUNC2(znode);
			znode->parent = NULL;
			znode->iip = 0;
			if (c->zroot.len) {
				err = FUNC10(c, c->zroot.lnum,
						     c->zroot.offs);
				if (err)
					return err;
			}
			c->zroot.lnum = zbr->lnum;
			c->zroot.offs = zbr->offs;
			c->zroot.len = zbr->len;
			c->zroot.znode = znode;
			FUNC16(!FUNC14(OBSOLETE_ZNODE,
				     &zp->flags));
			FUNC16(FUNC14(DIRTY_ZNODE, &zp->flags));
			FUNC4(&c->dirty_zn_cnt);

			if (zp->cnext) {
				FUNC3(OBSOLETE_ZNODE, &zp->flags);
				FUNC5(&c->clean_zn_cnt);
				FUNC5(&ubifs_clean_zn_cnt);
			} else
				FUNC12(zp);
		}
	}

	return 0;
}