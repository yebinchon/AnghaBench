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
struct ubifs_znode {int iip; int /*<<< orphan*/  time; struct ubifs_znode* parent; } ;
struct ubifs_zbranch {struct ubifs_znode* znode; int /*<<< orphan*/  len; int /*<<< orphan*/  offs; int /*<<< orphan*/  lnum; } ;
struct ubifs_info {int /*<<< orphan*/  clean_zn_cnt; int /*<<< orphan*/  max_znode_sz; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ubifs_znode* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ubifs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  ubifs_clean_zn_cnt ; 

struct ubifs_znode *FUNC7(struct ubifs_info *c,
				     struct ubifs_zbranch *zbr,
				     struct ubifs_znode *parent, int iip)
{
	int err;
	struct ubifs_znode *znode;

	FUNC6(!zbr->znode);
	/*
	 * A slab cache is not presently used for znodes because the znode size
	 * depends on the fanout which is stored in the superblock.
	 */
	znode = FUNC4(c->max_znode_sz, GFP_NOFS);
	if (!znode)
		return FUNC0(-ENOMEM);

	err = FUNC5(c, zbr->lnum, zbr->offs, zbr->len, znode);
	if (err)
		goto out;

	FUNC1(&c->clean_zn_cnt);

	/*
	 * Increment the global clean znode counter as well. It is OK that
	 * global and per-FS clean znode counters may be inconsistent for some
	 * short time (because we might be preempted at this point), the global
	 * one is only used in shrinker.
	 */
	FUNC1(&ubifs_clean_zn_cnt);

	zbr->znode = znode;
	znode->parent = parent;
	znode->time = FUNC2();
	znode->iip = iip;

	return znode;

out:
	FUNC3(znode);
	return FUNC0(err);
}