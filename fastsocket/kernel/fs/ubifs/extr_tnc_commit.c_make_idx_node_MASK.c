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
struct ubifs_znode {int child_cnt; int level; int lnum; int offs; int len; size_t iip; int /*<<< orphan*/  flags; struct ubifs_zbranch* zbranch; struct ubifs_znode* parent; } ;
struct ubifs_zbranch {int lnum; int offs; int len; struct ubifs_znode* znode; int /*<<< orphan*/  key; } ;
struct TYPE_4__ {int lnum; int offs; int len; } ;
struct ubifs_info {int /*<<< orphan*/  dirty_zn_cnt; int /*<<< orphan*/  calc_idx_sz; TYPE_2__ zroot; } ;
struct TYPE_3__ {int /*<<< orphan*/  node_type; } ;
struct ubifs_idx_node {void* level; void* child_cnt; TYPE_1__ ch; } ;
struct ubifs_branch {void* len; void* offs; void* lnum; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  COW_ZNODE ; 
 int /*<<< orphan*/  DIRTY_ZNODE ; 
 int /*<<< orphan*/  UBIFS_IDX_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,struct ubifs_znode*) ; 
 int FUNC6 (struct ubifs_info*,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 struct ubifs_branch* FUNC11 (struct ubifs_info*,struct ubifs_idx_node*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,struct ubifs_idx_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ubifs_znode*) ; 

__attribute__((used)) static int FUNC14(struct ubifs_info *c, struct ubifs_idx_node *idx,
			 struct ubifs_znode *znode, int lnum, int offs, int len)
{
	struct ubifs_znode *zp;
	int i, err;

	/* Make index node */
	idx->ch.node_type = UBIFS_IDX_NODE;
	idx->child_cnt = FUNC3(znode->child_cnt);
	idx->level = FUNC3(znode->level);
	for (i = 0; i < znode->child_cnt; i++) {
		struct ubifs_branch *br = FUNC11(c, idx, i);
		struct ubifs_zbranch *zbr = &znode->zbranch[i];

		FUNC7(c, &zbr->key, &br->key);
		br->lnum = FUNC4(zbr->lnum);
		br->offs = FUNC4(zbr->offs);
		br->len = FUNC4(zbr->len);
		if (!zbr->lnum || !zbr->len) {
			FUNC10("bad ref in znode");
			FUNC5(c, znode);
			if (zbr->znode)
				FUNC5(c, zbr->znode);
		}
	}
	FUNC12(c, idx, len, 0);

#ifdef CONFIG_UBIFS_FS_DEBUG
	znode->lnum = lnum;
	znode->offs = offs;
	znode->len = len;
#endif

	err = FUNC6(c, znode);

	/* Update the parent */
	zp = znode->parent;
	if (zp) {
		struct ubifs_zbranch *zbr;

		zbr = &zp->zbranch[znode->iip];
		zbr->lnum = lnum;
		zbr->offs = offs;
		zbr->len = len;
	} else {
		c->zroot.lnum = lnum;
		c->zroot.offs = offs;
		c->zroot.len = len;
	}
	c->calc_idx_sz += FUNC0(len, 8);

	FUNC2(&c->dirty_zn_cnt);

	FUNC9(FUNC13(znode));
	FUNC9(FUNC8(COW_ZNODE, &znode->flags));

	FUNC1(DIRTY_ZNODE, &znode->flags);
	FUNC1(COW_ZNODE, &znode->flags);

	return err;
}