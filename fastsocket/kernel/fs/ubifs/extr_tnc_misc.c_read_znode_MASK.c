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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int child_cnt; int level; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {scalar_t__ lnum; int offs; scalar_t__ len; union ubifs_key key; int /*<<< orphan*/ * znode; } ;
struct ubifs_info {int fanout; scalar_t__ main_first; scalar_t__ leb_cnt; scalar_t__ leb_size; TYPE_1__* ranges; int /*<<< orphan*/  max_idx_node_sz; } ;
struct ubifs_idx_node {int /*<<< orphan*/  level; int /*<<< orphan*/  child_cnt; } ;
struct ubifs_branch {int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {scalar_t__ max_len; scalar_t__ len; int min_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ubifs_key*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
#define  UBIFS_DATA_KEY 131 
#define  UBIFS_DENT_KEY 130 
 int /*<<< orphan*/  UBIFS_IDX_NODE ; 
#define  UBIFS_INO_KEY 129 
 int UBIFS_MAX_LEVELS ; 
#define  UBIFS_XENT_KEY 128 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,struct ubifs_idx_node*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key*) ; 
 int FUNC7 (struct ubifs_info*,union ubifs_key*) ; 
 int FUNC8 (struct ubifs_info*,union ubifs_key const*,union ubifs_key const*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_idx_node*) ; 
 struct ubifs_idx_node* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int,int) ; 
 struct ubifs_branch* FUNC14 (struct ubifs_info*,struct ubifs_idx_node*,int) ; 
 int FUNC15 (struct ubifs_info*,struct ubifs_idx_node*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC16(struct ubifs_info *c, int lnum, int offs, int len,
		      struct ubifs_znode *znode)
{
	int i, err, type, cmp;
	struct ubifs_idx_node *idx;

	idx = FUNC10(c->max_idx_node_sz, GFP_NOFS);
	if (!idx)
		return -ENOMEM;

	err = FUNC15(c, idx, UBIFS_IDX_NODE, len, lnum, offs);
	if (err < 0) {
		FUNC9(idx);
		return err;
	}

	znode->child_cnt = FUNC11(idx->child_cnt);
	znode->level = FUNC11(idx->level);

	FUNC4("LEB %d:%d, level %d, %d branch",
		lnum, offs, znode->level, znode->child_cnt);

	if (znode->child_cnt > c->fanout || znode->level > UBIFS_MAX_LEVELS) {
		FUNC2("current fanout %d, branch count %d",
			c->fanout, znode->child_cnt);
		FUNC2("max levels %d, znode level %d",
			UBIFS_MAX_LEVELS, znode->level);
		err = 1;
		goto out_dump;
	}

	for (i = 0; i < znode->child_cnt; i++) {
		const struct ubifs_branch *br = FUNC14(c, idx, i);
		struct ubifs_zbranch *zbr = &znode->zbranch[i];

		FUNC6(c, &br->key, &zbr->key);
		zbr->lnum = FUNC12(br->lnum);
		zbr->offs = FUNC12(br->offs);
		zbr->len  = FUNC12(br->len);
		zbr->znode = NULL;

		/* Validate branch */

		if (zbr->lnum < c->main_first ||
		    zbr->lnum >= c->leb_cnt || zbr->offs < 0 ||
		    zbr->offs + zbr->len > c->leb_size || zbr->offs & 7) {
			FUNC2("bad branch %d", i);
			err = 2;
			goto out_dump;
		}

		switch (FUNC7(c, &zbr->key)) {
		case UBIFS_INO_KEY:
		case UBIFS_DATA_KEY:
		case UBIFS_DENT_KEY:
		case UBIFS_XENT_KEY:
			break;
		default:
			FUNC3("bad key type at slot %d: %s", i,
				FUNC0(&zbr->key));
			err = 3;
			goto out_dump;
		}

		if (znode->level)
			continue;

		type = FUNC7(c, &zbr->key);
		if (c->ranges[type].max_len == 0) {
			if (zbr->len != c->ranges[type].len) {
				FUNC2("bad target node (type %d) length (%d)",
					type, zbr->len);
				FUNC2("have to be %d", c->ranges[type].len);
				err = 4;
				goto out_dump;
			}
		} else if (zbr->len < c->ranges[type].min_len ||
			   zbr->len > c->ranges[type].max_len) {
			FUNC2("bad target node (type %d) length (%d)",
				type, zbr->len);
			FUNC2("have to be in range of %d-%d",
				c->ranges[type].min_len,
				c->ranges[type].max_len);
			err = 5;
			goto out_dump;
		}
	}

	/*
	 * Ensure that the next key is greater or equivalent to the
	 * previous one.
	 */
	for (i = 0; i < znode->child_cnt - 1; i++) {
		const union ubifs_key *key1, *key2;

		key1 = &znode->zbranch[i].key;
		key2 = &znode->zbranch[i + 1].key;

		cmp = FUNC8(c, key1, key2);
		if (cmp > 0) {
			FUNC2("bad key order (keys %d and %d)", i, i + 1);
			err = 6;
			goto out_dump;
		} else if (cmp == 0 && !FUNC5(c, key1)) {
			/* These can only be keys with colliding hash */
			FUNC2("keys %d and %d are not hashed but equivalent",
				i, i + 1);
			err = 7;
			goto out_dump;
		}
	}

	FUNC9(idx);
	return 0;

out_dump:
	FUNC13("bad indexing node at LEB %d:%d, error %d", lnum, offs, err);
	FUNC1(c, idx);
	FUNC9(idx);
	return -EINVAL;
}