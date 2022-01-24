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
struct ubifs_lprops {int lnum; int flags; int /*<<< orphan*/  dirty; int /*<<< orphan*/  free; } ;
struct TYPE_2__ {scalar_t__ empty_lebs; scalar_t__ taken_empty_lebs; } ;
struct ubifs_info {scalar_t__ freeable_cnt; int /*<<< orphan*/  leb_size; TYPE_1__ lst; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct ubifs_lprops const*) ; 
 int LPROPS_INDEX ; 
 int /*<<< orphan*/  LPROPS_NC ; 
 int LPROPS_TAKEN ; 
 int FUNC1 (struct ubifs_lprops const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ubifs_lprops* FUNC3 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct ubifs_lprops* FUNC5 (struct ubifs_info*,struct ubifs_lprops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ubifs_lprops* FUNC7 (struct ubifs_info*) ; 
 struct ubifs_lprops* FUNC8 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubifs_info*) ; 
 int FUNC10 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*) ; 

int FUNC12(struct ubifs_info *c)
{
	const struct ubifs_lprops *lprops;
	int lnum = -1, err, flags;

	FUNC9(c);

	lprops = FUNC7(c);
	if (!lprops) {
		lprops = FUNC8(c);
		if (!lprops) {
			FUNC4(c->freeable_cnt == 0);
			if (c->lst.empty_lebs - c->lst.taken_empty_lebs > 0) {
				lprops = FUNC3(c);
				if (FUNC0(lprops)) {
					err = FUNC1(lprops);
					goto out;
				}
			}
		}
	}

	if (!lprops) {
		err = -ENOSPC;
		goto out;
	}

	lnum = lprops->lnum;

	FUNC2("found LEB %d, free %d, dirty %d, flags %#x",
		 lnum, lprops->free, lprops->dirty, lprops->flags);

	flags = lprops->flags | LPROPS_TAKEN | LPROPS_INDEX;
	lprops = FUNC5(c, lprops, c->leb_size, 0, flags, 0);
	if (FUNC0(lprops)) {
		err = FUNC1(lprops);
		goto out;
	}

	FUNC11(c);

	/*
	 * Ensure that empty LEBs have been unmapped. They may not have been,
	 * for example, because of an unclean unmount. Also LEBs that were
	 * freeable LEBs (free + dirty == leb_size) will not have been unmapped.
	 */
	err = FUNC10(c, lnum);
	if (err) {
		FUNC6(c, lnum, LPROPS_NC, LPROPS_NC, 0,
				    LPROPS_TAKEN | LPROPS_INDEX, 0);
		return err;
	}

	return lnum;

out:
	FUNC11(c);
	return err;
}