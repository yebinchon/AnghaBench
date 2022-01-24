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
struct ubifs_info {int* ilebs; scalar_t__ ileb_cnt; scalar_t__ ileb_nxt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (struct ubifs_info*,int) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ubifs_info*) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c, int cnt)
{
	int i, leb_cnt, lnum;

	c->ileb_cnt = 0;
	c->ileb_nxt = 0;
	leb_cnt = FUNC2(c, cnt);
	FUNC0("need about %d empty LEBS for TNC commit", leb_cnt);
	if (!leb_cnt)
		return 0;
	c->ilebs = FUNC3(leb_cnt * sizeof(int), GFP_NOFS);
	if (!c->ilebs)
		return -ENOMEM;
	for (i = 0; i < leb_cnt; i++) {
		lnum = FUNC4(c);
		if (lnum < 0)
			return lnum;
		c->ilebs[c->ileb_cnt++] = lnum;
		FUNC0("LEB %d", lnum);
	}
	if (FUNC1())
		return -ENOSPC;
	return 0;
}