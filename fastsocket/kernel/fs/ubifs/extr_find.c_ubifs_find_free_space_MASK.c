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
struct ubifs_lprops {int lnum; int flags; int free; } ;
struct TYPE_2__ {scalar_t__ idx_lebs; int empty_lebs; int taken_empty_lebs; } ;
struct ubifs_info {scalar_t__ min_idx_lebs; int freeable_cnt; int idx_gc_cnt; int leb_size; int /*<<< orphan*/  space_lock; TYPE_1__ lst; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_lprops const*) ; 
 int /*<<< orphan*/  LPROPS_NC ; 
 int LPROPS_TAKEN ; 
 int FUNC1 (struct ubifs_lprops const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 struct ubifs_lprops* FUNC3 (struct ubifs_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct ubifs_lprops* FUNC7 (struct ubifs_info*,struct ubifs_lprops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ubifs_info*) ; 
 int FUNC9 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*) ; 

int FUNC11(struct ubifs_info *c, int min_space, int *offs,
			  int squeeze)
{
	const struct ubifs_lprops *lprops;
	int lebs, rsvd_idx_lebs, pick_free = 0, err, lnum, flags;

	FUNC2("min_space %d", min_space);
	FUNC8(c);

	/* Check if there are enough empty LEBs for commit */
	FUNC4(&c->space_lock);
	if (c->min_idx_lebs > c->lst.idx_lebs)
		rsvd_idx_lebs = c->min_idx_lebs -  c->lst.idx_lebs;
	else
		rsvd_idx_lebs = 0;
	lebs = c->lst.empty_lebs + c->freeable_cnt + c->idx_gc_cnt -
	       c->lst.taken_empty_lebs;
	if (rsvd_idx_lebs < lebs)
		/*
		 * OK to allocate an empty LEB, but we still don't want to go
		 * looking for one if there aren't any.
		 */
		if (c->lst.empty_lebs - c->lst.taken_empty_lebs > 0) {
			pick_free = 1;
			/*
			 * Because we release the space lock, we must account
			 * for this allocation here. After the LEB properties
			 * flags have been updated, we subtract one. Note, the
			 * result of this is that lprops also decreases
			 * @taken_empty_lebs in 'ubifs_change_lp()', so it is
			 * off by one for a short period of time which may
			 * introduce a small disturbance to budgeting
			 * calculations, but this is harmless because at the
			 * worst case this would make the budgeting subsystem
			 * be more pessimistic than needed.
			 *
			 * Fundamentally, this is about serialization of the
			 * budgeting and lprops subsystems. We could make the
			 * @space_lock a mutex and avoid dropping it before
			 * calling 'ubifs_change_lp()', but mutex is more
			 * heavy-weight, and we want budgeting to be as fast as
			 * possible.
			 */
			c->lst.taken_empty_lebs += 1;
		}
	FUNC5(&c->space_lock);

	lprops = FUNC3(c, min_space, pick_free, squeeze);
	if (FUNC0(lprops)) {
		err = FUNC1(lprops);
		goto out;
	}

	lnum = lprops->lnum;
	flags = lprops->flags | LPROPS_TAKEN;

	lprops = FUNC7(c, lprops, LPROPS_NC, LPROPS_NC, flags, 0);
	if (FUNC0(lprops)) {
		err = FUNC1(lprops);
		goto out;
	}

	if (pick_free) {
		FUNC4(&c->space_lock);
		c->lst.taken_empty_lebs -= 1;
		FUNC5(&c->space_lock);
	}

	*offs = c->leb_size - lprops->free;
	FUNC10(c);

	if (*offs == 0) {
		/*
		 * Ensure that empty LEBs have been unmapped. They may not have
		 * been, for example, because of an unclean unmount.  Also
		 * LEBs that were freeable LEBs (free + dirty == leb_size) will
		 * not have been unmapped.
		 */
		err = FUNC9(c, lnum);
		if (err)
			return err;
	}

	FUNC2("found LEB %d, free %d", lnum, c->leb_size - *offs);
	FUNC6(*offs <= c->leb_size - min_space);
	return lnum;

out:
	if (pick_free) {
		FUNC4(&c->space_lock);
		c->lst.taken_empty_lebs -= 1;
		FUNC5(&c->space_lock);
	}
	FUNC10(c);
	return err;
}