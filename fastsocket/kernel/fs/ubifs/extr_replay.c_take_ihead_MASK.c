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
struct ubifs_lprops {int free; int flags; } ;
struct ubifs_info {int /*<<< orphan*/  ihead_lnum; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_lprops const*) ; 
 int /*<<< orphan*/  LPROPS_NC ; 
 int LPROPS_TAKEN ; 
 int FUNC1 (struct ubifs_lprops const*) ; 
 struct ubifs_lprops* FUNC2 (struct ubifs_info*,struct ubifs_lprops const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*) ; 
 struct ubifs_lprops* FUNC4 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*) ; 

__attribute__((used)) static int FUNC6(struct ubifs_info *c)
{
	const struct ubifs_lprops *lp;
	int err, free;

	FUNC3(c);

	lp = FUNC4(c, c->ihead_lnum);
	if (FUNC0(lp)) {
		err = FUNC1(lp);
		goto out;
	}

	free = lp->free;

	lp = FUNC2(c, lp, LPROPS_NC, LPROPS_NC,
			     lp->flags | LPROPS_TAKEN, 0);
	if (FUNC0(lp)) {
		err = FUNC1(lp);
		goto out;
	}

	err = free;
out:
	FUNC5(c);
	return err;
}