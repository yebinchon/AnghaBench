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
struct ubifs_lprops {int dummy; } ;
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ubifs_lprops const*) ; 
 int FUNC1 (struct ubifs_lprops const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_lprops*,struct ubifs_lprops const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 
 struct ubifs_lprops* FUNC5 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*) ; 

int FUNC7(struct ubifs_info *c, int lnum, struct ubifs_lprops *lp)
{
	int err = 0;
	const struct ubifs_lprops *lpp;

	FUNC4(c);

	lpp = FUNC5(c, lnum);
	if (FUNC0(lpp)) {
		err = FUNC1(lpp);
		FUNC3("cannot read properties of LEB %d, error %d",
			  lnum, err);
		goto out;
	}

	FUNC2(lp, lpp, sizeof(struct ubifs_lprops));

out:
	FUNC6(c);
	return err;
}