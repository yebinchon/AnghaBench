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
struct ubifs_wbuf {int lnum; scalar_t__ offs; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  jhead; } ;
struct ubifs_lprops {int flags; int lnum; scalar_t__ free; scalar_t__ dirty; } ;
struct ubifs_info {int gc_lnum; scalar_t__ leb_size; TYPE_1__* jheads; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOSPC ; 
 size_t GCHD ; 
 int LEB_RETAINED ; 
 int LPROPS_INDEX ; 
 scalar_t__ LPROPS_NC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ubifs_info*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ubifs_info*,struct ubifs_lprops*,scalar_t__,int) ; 
 int FUNC7 (struct ubifs_info*) ; 
 int FUNC8 (struct ubifs_info*,struct ubifs_lprops*) ; 
 int FUNC9 (struct ubifs_info*,int) ; 
 int FUNC10 (struct ubifs_info*,int) ; 
 int FUNC11 (struct ubifs_info*) ; 
 int FUNC12 (struct ubifs_wbuf*) ; 

int FUNC13(struct ubifs_info *c)
{
	struct ubifs_wbuf *wbuf = &c->jheads[GCHD].wbuf;
	struct ubifs_lprops lp;
	int lnum, err;

	c->gc_lnum = -1;
	if (wbuf->lnum == -1) {
		FUNC1("no GC head LEB");
		goto find_free;
	}
	/*
	 * See whether the used space in the dirtiest LEB fits in the GC head
	 * LEB.
	 */
	if (wbuf->offs == c->leb_size) {
		FUNC1("no room in GC head LEB");
		goto find_free;
	}
	err = FUNC6(c, &lp, wbuf->offs, 2);
	if (err) {
		if (err == -ENOSPC)
			FUNC0("could not find a dirty LEB");
		return err;
	}
	FUNC4(!(lp.flags & LPROPS_INDEX));
	lnum = lp.lnum;
	if (lp.free + lp.dirty == c->leb_size) {
		/* An empty LEB was returned */
		if (lp.free != c->leb_size) {
			err = FUNC5(c, lnum, c->leb_size,
						  0, 0, 0, 0);
			if (err)
				return err;
		}
		err = FUNC9(c, lnum);
		if (err)
			return err;
		c->gc_lnum = lnum;
		FUNC1("allocated LEB %d for GC", lnum);
		/* Run the commit */
		FUNC1("committing");
		return FUNC11(c);
	}
	/*
	 * There was no empty LEB so the used space in the dirtiest LEB must fit
	 * in the GC head LEB.
	 */
	if (lp.free + lp.dirty < wbuf->offs) {
		FUNC1("LEB %d doesn't fit in GC head LEB %d:%d",
			  lnum, wbuf->lnum, wbuf->offs);
		err = FUNC10(c, lnum);
		if (err)
			return err;
		goto find_free;
	}
	/*
	 * We run the commit before garbage collection otherwise subsequent
	 * mounts will see the GC and orphan deletion in a different order.
	 */
	FUNC1("committing");
	err = FUNC11(c);
	if (err)
		return err;
	/*
	 * The data in the dirtiest LEB fits in the GC head LEB, so do the GC
	 * - use locking to keep 'ubifs_assert()' happy.
	 */
	FUNC1("GC'ing LEB %d", lnum);
	FUNC2(&wbuf->io_mutex, wbuf->jhead);
	err = FUNC8(c, &lp);
	if (err >= 0) {
		int err2 = FUNC12(wbuf);

		if (err2)
			err = err2;
	}
	FUNC3(&wbuf->io_mutex);
	if (err < 0) {
		FUNC0("GC failed, error %d", err);
		if (err == -EAGAIN)
			err = -EINVAL;
		return err;
	}
	if (err != LEB_RETAINED) {
		FUNC0("GC returned %d", err);
		return -EINVAL;
	}
	err = FUNC9(c, c->gc_lnum);
	if (err)
		return err;
	FUNC1("allocated LEB %d for GC", lnum);
	return 0;

find_free:
	/*
	 * There is no GC head LEB or the free space in the GC head LEB is too
	 * small. Allocate gc_lnum by calling 'ubifs_find_free_leb_for_idx()' so
	 * GC is not run.
	 */
	lnum = FUNC7(c);
	if (lnum < 0) {
		FUNC0("could not find an empty LEB");
		return lnum;
	}
	/* And reset the index flag */
	err = FUNC5(c, lnum, LPROPS_NC, LPROPS_NC, 0,
				  LPROPS_INDEX, 0);
	if (err)
		return err;
	c->gc_lnum = lnum;
	FUNC1("allocated LEB %d for GC", lnum);
	/* Run the commit */
	FUNC1("committing");
	return FUNC11(c);
}