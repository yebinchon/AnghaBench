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
struct ubifs_zbranch {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  idx_lebs; } ;
struct ubifs_info {scalar_t__ min_idx_lebs; int /*<<< orphan*/  tnc_mutex; int /*<<< orphan*/  calc_idx_sz; TYPE_1__ lst; int /*<<< orphan*/  space_lock; scalar_t__ budg_uncommitted_idx; int /*<<< orphan*/  old_idx_sz; int /*<<< orphan*/  zroot; int /*<<< orphan*/  dirty_zn_cnt; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct ubifs_info*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*) ; 
 int FUNC6 (struct ubifs_info*) ; 
 int FUNC7 (struct ubifs_info*) ; 
 int FUNC8 (struct ubifs_info*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_zbranch*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ FUNC15 (struct ubifs_info*) ; 
 int FUNC16 (struct ubifs_info*) ; 

int FUNC17(struct ubifs_info *c, struct ubifs_zbranch *zroot)
{
	int err = 0, cnt;

	FUNC10(&c->tnc_mutex);
	err = FUNC2(c, 1);
	if (err)
		goto out;
	cnt = FUNC7(c);
	if (cnt != 0) {
		int no_space = 0;

		err = FUNC0(c, cnt);
		if (err == -ENOSPC)
			no_space = 1;
		else if (err)
			goto out_free;
		err = FUNC8(c, no_space, cnt);
		if (err)
			goto out_free;
		FUNC14(FUNC1(&c->dirty_zn_cnt) == 0);
		err = FUNC6(c);
		if (err)
			goto out;
	}
	FUNC4(c);
	FUNC9(zroot, &c->zroot, sizeof(struct ubifs_zbranch));

	err = FUNC16(c);
	if (err)
		goto out;

	FUNC12(&c->space_lock);
	/*
	 * Although we have not finished committing yet, update size of the
	 * committed index ('c->old_idx_sz') and zero out the index growth
	 * budget. It is OK to do this now, because we've reserved all the
	 * space which is needed to commit the index, and it is save for the
	 * budgeting subsystem to assume the index is already committed,
	 * even though it is not.
	 */
	FUNC14(c->min_idx_lebs == FUNC15(c));
	c->old_idx_sz = c->calc_idx_sz;
	c->budg_uncommitted_idx = 0;
	c->min_idx_lebs = FUNC15(c);
	FUNC13(&c->space_lock);
	FUNC11(&c->tnc_mutex);

	FUNC3("number of index LEBs %d", c->lst.idx_lebs);
	FUNC3("size of index %llu", c->calc_idx_sz);
	return err;

out_free:
	FUNC5(c);
out:
	FUNC11(&c->tnc_mutex);
	return err;
}