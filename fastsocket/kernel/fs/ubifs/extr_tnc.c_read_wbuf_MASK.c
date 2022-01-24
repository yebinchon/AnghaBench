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
struct ubifs_wbuf {int lnum; int offs; int buf; int /*<<< orphan*/  lock; struct ubifs_info* c; } ;
struct ubifs_info {int leb_cnt; int leb_size; int /*<<< orphan*/  ubi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,void*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ubifs_wbuf *wbuf, void *buf, int len, int lnum,
		     int offs)
{
	const struct ubifs_info *c = wbuf->c;
	int rlen, overlap;

	FUNC0("LEB %d:%d, length %d", lnum, offs, len);
	FUNC5(wbuf && lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
	FUNC5(!(offs & 7) && offs < c->leb_size);
	FUNC5(offs + len <= c->leb_size);

	FUNC2(&wbuf->lock);
	overlap = (lnum == wbuf->lnum && offs + len > wbuf->offs);
	if (!overlap) {
		/* We may safely unlock the write-buffer and read the data */
		FUNC3(&wbuf->lock);
		return FUNC4(c->ubi, lnum, buf, offs, len);
	}

	/* Don't read under wbuf */
	rlen = wbuf->offs - offs;
	if (rlen < 0)
		rlen = 0;

	/* Copy the rest from the write-buffer */
	FUNC1(buf + rlen, wbuf->buf + offs + rlen - wbuf->offs, len - rlen);
	FUNC3(&wbuf->lock);

	if (rlen > 0)
		/* Read everything that goes before write-buffer */
		return FUNC4(c->ubi, lnum, buf, offs, rlen);

	return 0;
}