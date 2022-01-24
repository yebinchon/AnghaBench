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
struct ubifs_wbuf {int offs; int used; int lnum; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  dtype; int /*<<< orphan*/  jhead; } ;
struct ubifs_info {int leb_size; scalar_t__ ro_media; TYPE_1__* jheads; } ;
struct TYPE_2__ {struct ubifs_wbuf wbuf; } ;

/* Variables and functions */
 int BASEHD ; 
 int EAGAIN ; 
 int ENOSPC ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ubifs_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct ubifs_info*,int,int*,int) ; 
 int FUNC7 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ubifs_info*,int) ; 
 int FUNC9 (struct ubifs_wbuf*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ubifs_info *c, int jhead, int len)
{
	int err = 0, err1, retries = 0, avail, lnum, offs, squeeze;
	struct ubifs_wbuf *wbuf = &c->jheads[jhead].wbuf;

	/*
	 * Typically, the base head has smaller nodes written to it, so it is
	 * better to try to allocate space at the ends of eraseblocks. This is
	 * what the squeeze parameter does.
	 */
	squeeze = (jhead == BASEHD);
again:
	FUNC2(&wbuf->io_mutex, wbuf->jhead);

	if (c->ro_media) {
		err = -EROFS;
		goto out_unlock;
	}

	avail = c->leb_size - wbuf->offs - wbuf->used;
	if (wbuf->lnum != -1 && avail >= len)
		return 0;

	/*
	 * Write buffer wasn't seek'ed or there is no enough space - look for an
	 * LEB with some empty space.
	 */
	lnum = FUNC6(c, len, &offs, squeeze);
	if (lnum >= 0) {
		/* Found an LEB, add it to the journal head */
		err = FUNC4(c, jhead, lnum, offs);
		if (err)
			goto out_return;
		/* A new bud was successfully allocated and added to the log */
		goto out;
	}

	err = lnum;
	if (err != -ENOSPC)
		goto out_unlock;

	/*
	 * No free space, we have to run garbage collector to make
	 * some. But the write-buffer mutex has to be unlocked because
	 * GC also takes it.
	 */
	FUNC1("no free space in jhead %s, run GC", FUNC0(jhead));
	FUNC3(&wbuf->io_mutex);

	lnum = FUNC7(c, 0);
	if (lnum < 0) {
		err = lnum;
		if (err != -ENOSPC)
			return err;

		/*
		 * GC could not make a free LEB. But someone else may
		 * have allocated new bud for this journal head,
		 * because we dropped @wbuf->io_mutex, so try once
		 * again.
		 */
		FUNC1("GC couldn't make a free LEB for jhead %s",
			FUNC0(jhead));
		if (retries++ < 2) {
			FUNC1("retry (%d)", retries);
			goto again;
		}

		FUNC1("return -ENOSPC");
		return err;
	}

	FUNC2(&wbuf->io_mutex, wbuf->jhead);
	FUNC1("got LEB %d for jhead %s", lnum, FUNC0(jhead));
	avail = c->leb_size - wbuf->offs - wbuf->used;

	if (wbuf->lnum != -1 && avail >= len) {
		/*
		 * Someone else has switched the journal head and we have
		 * enough space now. This happens when more than one process is
		 * trying to write to the same journal head at the same time.
		 */
		FUNC1("return LEB %d back, already have LEB %d:%d",
			lnum, wbuf->lnum, wbuf->offs + wbuf->used);
		err = FUNC8(c, lnum);
		if (err)
			goto out_unlock;
		return 0;
	}

	err = FUNC4(c, jhead, lnum, 0);
	if (err)
		goto out_return;
	offs = 0;

out:
	err = FUNC9(wbuf, lnum, offs, wbuf->dtype);
	if (err)
		goto out_unlock;

	return 0;

out_unlock:
	FUNC3(&wbuf->io_mutex);
	return err;

out_return:
	/* An error occurred and the LEB has to be returned to lprops */
	FUNC5(err < 0);
	err1 = FUNC8(c, lnum);
	if (err1 && err == -EAGAIN)
		/*
		 * Return original error code only if it is not %-EAGAIN,
		 * which is not really an error. Otherwise, return the error
		 * code of 'ubifs_return_leb()'.
		 */
		err = err1;
	FUNC3(&wbuf->io_mutex);
	return err;
}