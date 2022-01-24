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
struct TYPE_2__ {int idx_lebs; } ;
struct ubifs_info {int* gap_lebs; int ileb_cnt; int /*<<< orphan*/  space_lock; TYPE_1__ lst; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  dbg_force_in_the_gaps_enabled ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ubifs_info*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct ubifs_info *c, int cnt)
{
	int err, leb_needed_cnt, written, *p;

	FUNC2("%d znodes to write", cnt);

	c->gap_lebs = FUNC5(sizeof(int) * (c->lst.idx_lebs + 1), GFP_NOFS);
	if (!c->gap_lebs)
		return -ENOMEM;

	p = c->gap_lebs;
	do {
		FUNC9(p < c->gap_lebs + sizeof(int) * c->lst.idx_lebs);
		written = FUNC6(c, p);
		if (written < 0) {
			err = written;
			if (err != -ENOSPC) {
				FUNC4(c->gap_lebs);
				c->gap_lebs = NULL;
				return err;
			}
			if (!dbg_force_in_the_gaps_enabled) {
				/*
				 * Do not print scary warnings if the debugging
				 * option which forces in-the-gaps is enabled.
				 */
				FUNC10("out of space");
				FUNC7(&c->space_lock);
				FUNC0(c);
				FUNC8(&c->space_lock);
				FUNC1(c);
			}
			/* Try to commit anyway */
			err = 0;
			break;
		}
		p++;
		cnt -= written;
		leb_needed_cnt = FUNC3(c, cnt);
		FUNC2("%d znodes remaining, need %d LEBs, have %d", cnt,
		       leb_needed_cnt, c->ileb_cnt);
	} while (leb_needed_cnt > c->ileb_cnt);

	*p = -1;
	return 0;
}