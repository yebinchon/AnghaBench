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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int lnum; int offs; } ;
struct ubifs_info {int gc_seq; int /*<<< orphan*/  tnc_mutex; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct ubifs_info*,union ubifs_key const*,struct ubifs_zbranch*,void*) ; 
 scalar_t__ FUNC1 (struct ubifs_info*,union ubifs_key const*) ; 
 scalar_t__ FUNC2 (struct ubifs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubifs_info*,struct ubifs_zbranch*,void*) ; 
 scalar_t__ FUNC6 (struct ubifs_info*,int) ; 
 int FUNC7 (struct ubifs_info*,union ubifs_key const*,struct ubifs_znode**,int*) ; 
 int FUNC8 (struct ubifs_info*,struct ubifs_zbranch*,void*) ; 

int FUNC9(struct ubifs_info *c, const union ubifs_key *key,
		     void *node, int *lnum, int *offs)
{
	int found, n, err, safely = 0, gc_seq1;
	struct ubifs_znode *znode;
	struct ubifs_zbranch zbr, *zt;

again:
	FUNC3(&c->tnc_mutex);
	found = FUNC7(c, key, &znode, &n);
	if (!found) {
		err = -ENOENT;
		goto out;
	} else if (found < 0) {
		err = found;
		goto out;
	}
	zt = &znode->zbranch[n];
	if (lnum) {
		*lnum = zt->lnum;
		*offs = zt->offs;
	}
	if (FUNC1(c, key)) {
		/*
		 * In this case the leaf node cache gets used, so we pass the
		 * address of the zbranch and keep the mutex locked
		 */
		err = FUNC5(c, zt, node);
		goto out;
	}
	if (safely) {
		err = FUNC8(c, zt, node);
		goto out;
	}
	/* Drop the TNC mutex prematurely and race with garbage collection */
	zbr = znode->zbranch[n];
	gc_seq1 = c->gc_seq;
	FUNC4(&c->tnc_mutex);

	if (FUNC6(c, zbr.lnum)) {
		/* We do not GC journal heads */
		err = FUNC8(c, &zbr, node);
		return err;
	}

	err = FUNC0(c, key, &zbr, node);
	if (err <= 0 || FUNC2(c, zbr.lnum, gc_seq1)) {
		/*
		 * The node may have been GC'ed out from under us so try again
		 * while keeping the TNC mutex locked.
		 */
		safely = 1;
		goto again;
	}
	return 0;

out:
	FUNC4(&c->tnc_mutex);
	return err;
}