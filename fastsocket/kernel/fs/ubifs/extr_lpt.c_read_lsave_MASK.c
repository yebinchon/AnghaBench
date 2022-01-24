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
struct ubifs_info {int lsave_cnt; int* lsave; int leb_cnt; int /*<<< orphan*/  lsave_sz; int /*<<< orphan*/  lsave_offs; int /*<<< orphan*/  lsave_lnum; int /*<<< orphan*/  ubi; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,int) ; 
 int FUNC2 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c)
{
	int err, i;
	void *buf;

	buf = FUNC4(c->lsave_sz);
	if (!buf)
		return -ENOMEM;
	err = FUNC0(c->ubi, c->lsave_lnum, buf, c->lsave_offs, c->lsave_sz);
	if (err)
		goto out;
	err = FUNC2(c, buf);
	if (err)
		goto out;
	for (i = 0; i < c->lsave_cnt; i++) {
		int lnum = c->lsave[i];

		/*
		 * Due to automatic resizing, the values in the lsave table
		 * could be beyond the volume size - just ignore them.
		 */
		if (lnum >= c->leb_cnt)
			continue;
		FUNC1(c, lnum);
	}
out:
	FUNC3(buf);
	return err;
}