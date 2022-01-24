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
struct ubifs_info {int ihead_offs; int leb_size; int replaying; int ltail_lnum; int lhead_lnum; int lhead_offs; int log_lebs; scalar_t__ bud_bytes; scalar_t__ max_bud_bytes; scalar_t__ highest_inum; int /*<<< orphan*/  max_sqnum; scalar_t__ need_recovery; int /*<<< orphan*/  max_idx_node_sz; int /*<<< orphan*/  budg_uncommitted_idx; int /*<<< orphan*/  dirty_zn_cnt; int /*<<< orphan*/  ihead_lnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int UBIFS_LOG_LNUM ; 
 int UBIFS_TRUN_KEY ; 
 int FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*) ; 
 int FUNC6 (struct ubifs_info*) ; 
 int FUNC7 (struct ubifs_info*,int,int,void*) ; 
 int FUNC8 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 void* FUNC12 (int) ; 

int FUNC13(struct ubifs_info *c)
{
	int err, i, lnum, offs, free;
	void *sbuf = NULL;

	FUNC0(UBIFS_TRUN_KEY > 5);

	/* Update the status of the index head in lprops to 'taken' */
	free = FUNC8(c);
	if (free < 0)
		return free; /* Error code */

	if (c->ihead_offs != c->leb_size - free) {
		FUNC10("bad index head LEB %d:%d", c->ihead_lnum,
			  c->ihead_offs);
		return -EINVAL;
	}

	sbuf = FUNC12(c->leb_size);
	if (!sbuf)
		return -ENOMEM;

	FUNC3("start replaying the journal");

	c->replaying = 1;

	lnum = c->ltail_lnum = c->lhead_lnum;
	offs = c->lhead_offs;

	for (i = 0; i < c->log_lebs; i++, lnum++) {
		if (lnum >= UBIFS_LOG_LNUM + c->log_lebs) {
			/*
			 * The log is logically circular, we reached the last
			 * LEB, switch to the first one.
			 */
			lnum = UBIFS_LOG_LNUM;
			offs = 0;
		}
		err = FUNC7(c, lnum, offs, sbuf);
		if (err == 1)
			/* We hit the end of the log */
			break;
		if (err)
			goto out;
		offs = 0;
	}

	err = FUNC6(c);
	if (err)
		goto out;

	err = FUNC1(c);
	if (err)
		goto out;

	/*
	 * UBIFS budgeting calculations use @c->budg_uncommitted_idx variable
	 * to roughly estimate index growth. Things like @c->min_idx_lebs
	 * depend on it. This means we have to initialize it to make sure
	 * budgeting works properly.
	 */
	c->budg_uncommitted_idx = FUNC2(&c->dirty_zn_cnt);
	c->budg_uncommitted_idx *= c->max_idx_node_sz;

	FUNC9(c->bud_bytes <= c->max_bud_bytes || c->need_recovery);
	FUNC3("finished, log head LEB %d:%d, max_sqnum %llu, "
		"highest_inum %lu", c->lhead_lnum, c->lhead_offs, c->max_sqnum,
		(unsigned long)c->highest_inum);
out:
	FUNC5(c);
	FUNC4(c);
	FUNC11(sbuf);
	c->replaying = 0;
	return err;
}