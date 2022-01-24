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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int child_cnt; int level; scalar_t__ iip; struct ubifs_znode* parent; TYPE_2__* zbranch; int /*<<< orphan*/  flags; scalar_t__ alt; } ;
struct ubifs_zbranch {scalar_t__ len; scalar_t__ offs; scalar_t__ lnum; struct ubifs_znode* znode; union ubifs_key key; } ;
struct TYPE_3__ {struct ubifs_znode* znode; scalar_t__ len; scalar_t__ offs; scalar_t__ lnum; } ;
struct ubifs_info {int fanout; TYPE_1__ zroot; int /*<<< orphan*/  dirty_zn_cnt; int /*<<< orphan*/  max_znode_sz; } ;
struct TYPE_4__ {struct ubifs_znode* znode; union ubifs_key key; scalar_t__ len; scalar_t__ offs; scalar_t__ lnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key*) ; 
 int /*<<< orphan*/  DIRTY_ZNODE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ UBIFS_DATA_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_znode*,struct ubifs_zbranch*,int) ; 
 scalar_t__ FUNC7 (struct ubifs_info*,union ubifs_key*) ; 
 scalar_t__ FUNC8 (struct ubifs_info*,union ubifs_key*) ; 
 struct ubifs_znode* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct ubifs_info *c, struct ubifs_znode *znode,
		      struct ubifs_zbranch *zbr, int n)
{
	struct ubifs_znode *zn, *zi, *zp;
	int i, keep, move, appending = 0;
	union ubifs_key *key = &zbr->key, *key1;

	FUNC10(n >= 0 && n <= c->fanout);

	/* Implement naive insert for now */
again:
	zp = znode->parent;
	if (znode->child_cnt < c->fanout) {
		FUNC10(n != c->fanout);
		FUNC4("inserted at %d level %d, key %s", n, znode->level,
			FUNC0(key));

		FUNC6(znode, zbr, n);

		/* Ensure parent's key is correct */
		if (n == 0 && zp && znode->iip == 0)
			FUNC3(c, znode);

		return 0;
	}

	/*
	 * Unfortunately, @znode does not have more empty slots and we have to
	 * split it.
	 */
	FUNC4("splitting level %d, key %s", znode->level, FUNC0(key));

	if (znode->alt)
		/*
		 * We can no longer be sure of finding this znode by key, so we
		 * record it in the old_idx tree.
		 */
		FUNC5(c, znode);

	zn = FUNC9(c->max_znode_sz, GFP_NOFS);
	if (!zn)
		return -ENOMEM;
	zn->parent = zp;
	zn->level = znode->level;

	/* Decide where to split */
	if (znode->level == 0 && FUNC8(c, key) == UBIFS_DATA_KEY) {
		/* Try not to split consecutive data keys */
		if (n == c->fanout) {
			key1 = &znode->zbranch[n - 1].key;
			if (FUNC7(c, key1) == FUNC7(c, key) &&
			    FUNC8(c, key1) == UBIFS_DATA_KEY)
				appending = 1;
		} else
			goto check_split;
	} else if (appending && n != c->fanout) {
		/* Try not to split consecutive data keys */
		appending = 0;
check_split:
		if (n >= (c->fanout + 1) / 2) {
			key1 = &znode->zbranch[0].key;
			if (FUNC7(c, key1) == FUNC7(c, key) &&
			    FUNC8(c, key1) == UBIFS_DATA_KEY) {
				key1 = &znode->zbranch[n].key;
				if (FUNC7(c, key1) != FUNC7(c, key) ||
				    FUNC8(c, key1) != UBIFS_DATA_KEY) {
					keep = n;
					move = c->fanout - keep;
					zi = znode;
					goto do_split;
				}
			}
		}
	}

	if (appending) {
		keep = c->fanout;
		move = 0;
	} else {
		keep = (c->fanout + 1) / 2;
		move = c->fanout - keep;
	}

	/*
	 * Although we don't at present, we could look at the neighbors and see
	 * if we can move some zbranches there.
	 */

	if (n < keep) {
		/* Insert into existing znode */
		zi = znode;
		move += 1;
		keep -= 1;
	} else {
		/* Insert into new znode */
		zi = zn;
		n -= keep;
		/* Re-parent */
		if (zn->level != 0)
			zbr->znode->parent = zn;
	}

do_split:

	FUNC1(DIRTY_ZNODE, &zn->flags);
	FUNC2(&c->dirty_zn_cnt);

	zn->child_cnt = move;
	znode->child_cnt = keep;

	FUNC4("moving %d, keeping %d", move, keep);

	/* Move zbranch */
	for (i = 0; i < move; i++) {
		zn->zbranch[i] = znode->zbranch[keep + i];
		/* Re-parent */
		if (zn->level != 0)
			if (zn->zbranch[i].znode) {
				zn->zbranch[i].znode->parent = zn;
				zn->zbranch[i].znode->iip = i;
			}
	}

	/* Insert new key and branch */
	FUNC4("inserting at %d level %d, key %s", n, zn->level, FUNC0(key));

	FUNC6(zi, zbr, n);

	/* Insert new znode (produced by spitting) into the parent */
	if (zp) {
		if (n == 0 && zi == znode && znode->iip == 0)
			FUNC3(c, znode);

		/* Locate insertion point */
		n = znode->iip + 1;

		/* Tail recursion */
		zbr->key = zn->zbranch[0].key;
		zbr->znode = zn;
		zbr->lnum = 0;
		zbr->offs = 0;
		zbr->len = 0;
		znode = zp;

		goto again;
	}

	/* We have to split root znode */
	FUNC4("creating new zroot at level %d", znode->level + 1);

	zi = FUNC9(c->max_znode_sz, GFP_NOFS);
	if (!zi)
		return -ENOMEM;

	zi->child_cnt = 2;
	zi->level = znode->level + 1;

	FUNC1(DIRTY_ZNODE, &zi->flags);
	FUNC2(&c->dirty_zn_cnt);

	zi->zbranch[0].key = znode->zbranch[0].key;
	zi->zbranch[0].znode = znode;
	zi->zbranch[0].lnum = c->zroot.lnum;
	zi->zbranch[0].offs = c->zroot.offs;
	zi->zbranch[0].len = c->zroot.len;
	zi->zbranch[1].key = zn->zbranch[0].key;
	zi->zbranch[1].znode = zn;

	c->zroot.lnum = 0;
	c->zroot.offs = 0;
	c->zroot.len = 0;
	c->zroot.znode = zi;

	zn->parent = zi;
	zn->iip = 1;
	znode->parent = zi;
	znode->iip = 0;

	return 0;
}