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
struct ubifs_scan_leb {int lnum; int ecc; void* buf; int /*<<< orphan*/  nodes; } ;
struct ubifs_info {scalar_t__ leb_size; int /*<<< orphan*/  ubi; } ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 struct ubifs_scan_leb* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_scan_leb*) ; 
 struct ubifs_scan_leb* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,void*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int,int,int) ; 

struct ubifs_scan_leb *FUNC7(const struct ubifs_info *c, int lnum,
					int offs, void *sbuf)
{
	struct ubifs_scan_leb *sleb;
	int err;

	FUNC2("scan LEB %d:%d", lnum, offs);

	sleb = FUNC4(sizeof(struct ubifs_scan_leb), GFP_NOFS);
	if (!sleb)
		return FUNC0(-ENOMEM);

	sleb->lnum = lnum;
	FUNC1(&sleb->nodes);
	sleb->buf = sbuf;

	err = FUNC5(c->ubi, lnum, sbuf + offs, offs, c->leb_size - offs);
	if (err && err != -EBADMSG) {
		FUNC6("cannot read %d bytes from LEB %d:%d,"
			  " error %d", c->leb_size - offs, lnum, offs, err);
		FUNC3(sleb);
		return FUNC0(err);
	}

	if (err == -EBADMSG)
		sleb->ecc = 1;

	return sleb;
}