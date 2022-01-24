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
struct ubifs_wbuf {int used; int offs; int lnum; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  jhead; } ;
struct ubifs_lprops {int lnum; scalar_t__ free; scalar_t__ dirty; int flags; } ;
struct ubifs_info {int dead_wm; int leb_size; int dark_wm; int gc_lnum; int /*<<< orphan*/  idx_gc; scalar_t__ ro_media; TYPE_1__* jheads; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSPC ; 
 int EROFS ; 
 size_t GCHD ; 
 int HARD_LEBS_LIMIT ; 
 int LEB_FREED ; 
 int LEB_FREED_IDX ; 
 int LEB_RETAINED ; 
 int LPROPS_INDEX ; 
 int SOFT_LEBS_LIMIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*) ; 
 int FUNC8 (struct ubifs_info*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*) ; 
 int FUNC10 (struct ubifs_info*,struct ubifs_lprops*,int,int) ; 
 int FUNC11 (struct ubifs_info*,struct ubifs_lprops*) ; 
 scalar_t__ FUNC12 (struct ubifs_info*) ; 
 int FUNC13 (struct ubifs_info*,int) ; 
 int FUNC14 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubifs_info*,int) ; 
 int FUNC16 (struct ubifs_wbuf*) ; 

int FUNC17(struct ubifs_info *c, int anyway)
{
	int i, err, ret, min_space = c->dead_wm;
	struct ubifs_lprops lp;
	struct ubifs_wbuf *wbuf = &c->jheads[GCHD].wbuf;

	FUNC7(c);

	if (FUNC12(c))
		return -EAGAIN;

	FUNC4(&wbuf->io_mutex, wbuf->jhead);

	if (c->ro_media) {
		ret = -EROFS;
		goto out_unlock;
	}

	/* We expect the write-buffer to be empty on entry */
	FUNC6(!wbuf->used);

	for (i = 0; ; i++) {
		int space_before = c->leb_size - wbuf->offs - wbuf->used;
		int space_after;

		FUNC0();

		/* Give the commit an opportunity to run */
		if (FUNC12(c)) {
			ret = -EAGAIN;
			break;
		}

		if (i > SOFT_LEBS_LIMIT && !FUNC3(&c->idx_gc)) {
			/*
			 * We've done enough iterations. Indexing LEBs were
			 * moved and will be available after the commit.
			 */
			FUNC1("soft limit, some index LEBs GC'ed, -EAGAIN");
			FUNC9(c);
			ret = -EAGAIN;
			break;
		}

		if (i > HARD_LEBS_LIMIT) {
			/*
			 * We've moved too many LEBs and have not made
			 * progress, give up.
			 */
			FUNC1("hard limit, -ENOSPC");
			ret = -ENOSPC;
			break;
		}

		/*
		 * Empty and freeable LEBs can turn up while we waited for
		 * the wbuf lock, or while we have been running GC. In that
		 * case, we should just return one of those instead of
		 * continuing to GC dirty LEBs. Hence we request
		 * 'ubifs_find_dirty_leb()' to return an empty LEB if it can.
		 */
		ret = FUNC10(c, &lp, min_space, anyway ? 0 : 1);
		if (ret) {
			if (ret == -ENOSPC)
				FUNC1("no more dirty LEBs");
			break;
		}

		FUNC1("found LEB %d: free %d, dirty %d, sum %d "
		       "(min. space %d)", lp.lnum, lp.free, lp.dirty,
		       lp.free + lp.dirty, min_space);

		if (lp.free + lp.dirty == c->leb_size) {
			/* An empty LEB was returned */
			FUNC1("LEB %d is free, return it", lp.lnum);
			/*
			 * ubifs_find_dirty_leb() doesn't return freeable index
			 * LEBs.
			 */
			FUNC6(!(lp.flags & LPROPS_INDEX));
			if (lp.free != c->leb_size) {
				/*
				 * Write buffers must be sync'd before
				 * unmapping freeable LEBs, because one of them
				 * may contain data which obsoletes something
				 * in 'lp.pnum'.
				 */
				ret = FUNC2(c);
				if (ret)
					goto out;
				ret = FUNC8(c, lp.lnum,
							  c->leb_size, 0, 0, 0,
							  0);
				if (ret)
					goto out;
			}
			ret = FUNC13(c, lp.lnum);
			if (ret)
				goto out;
			ret = lp.lnum;
			break;
		}

		space_before = c->leb_size - wbuf->offs - wbuf->used;
		if (wbuf->lnum == -1)
			space_before = 0;

		ret = FUNC11(c, &lp);
		if (ret < 0) {
			if (ret == -EAGAIN || ret == -ENOSPC) {
				/*
				 * These codes are not errors, so we have to
				 * return the LEB to lprops. But if the
				 * 'ubifs_return_leb()' function fails, its
				 * failure code is propagated to the caller
				 * instead of the original '-EAGAIN' or
				 * '-ENOSPC'.
				 */
				err = FUNC14(c, lp.lnum);
				if (err)
					ret = err;
				break;
			}
			goto out;
		}

		if (ret == LEB_FREED) {
			/* An LEB has been freed and is ready for use */
			FUNC1("LEB %d freed, return", lp.lnum);
			ret = lp.lnum;
			break;
		}

		if (ret == LEB_FREED_IDX) {
			/*
			 * This was an indexing LEB and it cannot be
			 * immediately used. And instead of requesting the
			 * commit straight away, we try to garbage collect some
			 * more.
			 */
			FUNC1("indexing LEB %d freed, continue", lp.lnum);
			continue;
		}

		FUNC6(ret == LEB_RETAINED);
		space_after = c->leb_size - wbuf->offs - wbuf->used;
		FUNC1("LEB %d retained, freed %d bytes", lp.lnum,
		       space_after - space_before);

		if (space_after > space_before) {
			/* GC makes progress, keep working */
			min_space >>= 1;
			if (min_space < c->dead_wm)
				min_space = c->dead_wm;
			continue;
		}

		FUNC1("did not make progress");

		/*
		 * GC moved an LEB bud have not done any progress. This means
		 * that the previous GC head LEB contained too few free space
		 * and the LEB which was GC'ed contained only large nodes which
		 * did not fit that space.
		 *
		 * We can do 2 things:
		 * 1. pick another LEB in a hope it'll contain a small node
		 *    which will fit the space we have at the end of current GC
		 *    head LEB, but there is no guarantee, so we try this out
		 *    unless we have already been working for too long;
		 * 2. request an LEB with more dirty space, which will force
		 *    'ubifs_find_dirty_leb()' to start scanning the lprops
		 *    table, instead of just picking one from the heap
		 *    (previously it already picked the dirtiest LEB).
		 */
		if (i < SOFT_LEBS_LIMIT) {
			FUNC1("try again");
			continue;
		}

		min_space <<= 1;
		if (min_space > c->dark_wm)
			min_space = c->dark_wm;
		FUNC1("set min. space to %d", min_space);
	}

	if (ret == -ENOSPC && !FUNC3(&c->idx_gc)) {
		FUNC1("no space, some index LEBs GC'ed, -EAGAIN");
		FUNC9(c);
		ret = -EAGAIN;
	}

	err = FUNC16(wbuf);
	if (!err)
		err = FUNC13(c, c->gc_lnum);
	if (err) {
		ret = err;
		goto out;
	}
out_unlock:
	FUNC5(&wbuf->io_mutex);
	return ret;

out:
	FUNC6(ret < 0);
	FUNC6(ret != -ENOSPC && ret != -EAGAIN);
	FUNC15(c, ret);
	FUNC16(wbuf);
	FUNC5(&wbuf->io_mutex);
	FUNC14(c, lp.lnum);
	return ret;
}