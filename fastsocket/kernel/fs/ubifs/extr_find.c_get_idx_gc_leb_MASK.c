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
struct ubifs_lprops {int flags; int /*<<< orphan*/  free; int /*<<< orphan*/  dirty; int /*<<< orphan*/  lnum; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_lprops const*) ; 
 int LPROPS_INDEX ; 
 int /*<<< orphan*/  LPROPS_NC ; 
 int FUNC1 (struct ubifs_lprops const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ubifs_lprops* FUNC3 (struct ubifs_info*,struct ubifs_lprops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct ubifs_info*) ; 
 struct ubifs_lprops* FUNC5 (struct ubifs_info*,int) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c)
{
	const struct ubifs_lprops *lp;
	int err, lnum;

	err = FUNC4(c);
	if (err < 0)
		return err;
	lnum = err;
	/*
	 * The LEB was due to be unmapped after the commit but
	 * it is needed now for this commit.
	 */
	lp = FUNC5(c, lnum);
	if (FUNC0(lp))
		return FUNC1(lp);
	lp = FUNC3(c, lp, LPROPS_NC, LPROPS_NC,
			     lp->flags | LPROPS_INDEX, -1);
	if (FUNC0(lp))
		return FUNC1(lp);
	FUNC2("LEB %d, dirty %d and free %d flags %#x",
		 lp->lnum, lp->dirty, lp->free, lp->flags);
	return lnum;
}