#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_7__ {int /*<<< orphan*/  bh; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int DEPTH ; 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int FUNC1 (struct inode*,int,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct inode*,int,int*,TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pointers_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 scalar_t__ FUNC10 (struct inode*,TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, sector_t iblock, struct buffer_head *bh_result, int create)
{
	int err = -EIO;
	int offsets[DEPTH];
	Indirect chain[DEPTH];
	struct super_block *sb = inode->i_sb;
	Indirect *partial;
	int left;
	int depth = FUNC3(inode, iblock, offsets);

	if (depth == 0)
		goto out;

reread:
	FUNC7(&pointers_lock);
	partial = FUNC5(inode, depth, offsets, chain, &err);
	FUNC8(&pointers_lock);

	/* Simplest case - block found, no allocation needed */
	if (!partial) {
got_it:
		FUNC6(bh_result, sb, FUNC2(FUNC0(sb),
					chain[depth-1].key));
		/* Clean up and exit */
		partial = chain+depth-1; /* the whole chain */
		goto cleanup;
	}

	/* Next simple case - plain lookup or failed read of indirect block */
	if (!create || err == -EIO) {
cleanup:
		while (partial > chain) {
			FUNC4(partial->bh);
			partial--;
		}
out:
		return err;
	}

	/*
	 * Indirect block might be removed by truncate while we were
	 * reading it. Handling of that case (forget what we've got and
	 * reread) is taken out of the main path.
	 */
	if (err == -EAGAIN)
		goto changed;

	left = (chain + depth) - partial;
	err = FUNC1(inode, left, offsets+(partial-chain), partial);
	if (err)
		goto cleanup;

	if (FUNC10(inode, chain, partial, left) < 0)
		goto changed;

	FUNC9(bh_result);
	goto got_it;

changed:
	while (partial > chain) {
		FUNC4(partial->bh);
		partial--;
	}
	goto reread;
}