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
struct ubifs_scan_leb {scalar_t__ endpt; } ;
struct ubifs_info {int ohead_lnum; int orph_first; int orph_last; scalar_t__ ohead_offs; int /*<<< orphan*/  sbuf; scalar_t__ no_orphs; } ;

/* Variables and functions */
 int EUCLEAN ; 
 scalar_t__ FUNC0 (struct ubifs_scan_leb*) ; 
 int FUNC1 (struct ubifs_scan_leb*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct ubifs_info*,struct ubifs_scan_leb*,unsigned long long*,int*,int*) ; 
 struct ubifs_scan_leb* FUNC4 (struct ubifs_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ubifs_scan_leb* FUNC5 (struct ubifs_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_scan_leb*) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c)
{
	unsigned long long last_cmt_no = 0;
	int lnum, err = 0, outofdate = 0, last_flagged = 0;

	c->ohead_lnum = c->orph_first;
	c->ohead_offs = 0;
	/* Check no-orphans flag and skip this if no orphans */
	if (c->no_orphs) {
		FUNC2("no orphans");
		return 0;
	}
	/*
	 * Orph nodes always start at c->orph_first and are written to each
	 * successive LEB in turn. Generally unused LEBs will have been unmapped
	 * but may contain out of date orphan nodes if the unmap didn't go
	 * through. In addition, the last orphan node written for each commit is
	 * marked (top bit of orph->cmt_no is set to 1). It is possible that
	 * there are orphan nodes from the next commit (i.e. the commit did not
	 * complete successfully). In that case, no orphans will have been lost
	 * due to the way that orphans are written, and any orphans added will
	 * be valid orphans anyway and so can be deleted.
	 */
	for (lnum = c->orph_first; lnum <= c->orph_last; lnum++) {
		struct ubifs_scan_leb *sleb;

		FUNC2("LEB %d", lnum);
		sleb = FUNC5(c, lnum, 0, c->sbuf, 1);
		if (FUNC0(sleb)) {
			if (FUNC1(sleb) == -EUCLEAN)
				sleb = FUNC4(c, lnum, 0, c->sbuf, 0);
			if (FUNC0(sleb)) {
				err = FUNC1(sleb);
				break;
			}
		}
		err = FUNC3(c, sleb, &last_cmt_no, &outofdate,
				      &last_flagged);
		if (err || outofdate) {
			FUNC6(sleb);
			break;
		}
		if (sleb->endpt) {
			c->ohead_lnum = lnum;
			c->ohead_offs = sleb->endpt;
		}
		FUNC6(sleb);
	}
	return err;
}