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
struct ubifs_wbuf {int lnum; scalar_t__ used; int offs; int avail; int dtype; int /*<<< orphan*/  lock; int /*<<< orphan*/  jhead; struct ubifs_info* c; } ;
struct ubifs_info {int leb_cnt; int leb_size; int min_io_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ubifs_wbuf*) ; 

int FUNC6(struct ubifs_wbuf *wbuf, int lnum, int offs,
			   int dtype)
{
	const struct ubifs_info *c = wbuf->c;

	FUNC0("LEB %d:%d, jhead %s", lnum, offs, FUNC1(wbuf->jhead));
	FUNC4(lnum >= 0 && lnum < c->leb_cnt);
	FUNC4(offs >= 0 && offs <= c->leb_size);
	FUNC4(offs % c->min_io_size == 0 && !(offs & 7));
	FUNC4(lnum != wbuf->lnum);

	if (wbuf->used > 0) {
		int err = FUNC5(wbuf);

		if (err)
			return err;
	}

	FUNC2(&wbuf->lock);
	wbuf->lnum = lnum;
	wbuf->offs = offs;
	wbuf->avail = c->min_io_size;
	wbuf->used = 0;
	FUNC3(&wbuf->lock);
	wbuf->dtype = dtype;

	return 0;
}