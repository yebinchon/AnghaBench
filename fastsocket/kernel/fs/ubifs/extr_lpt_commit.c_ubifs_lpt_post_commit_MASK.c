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
struct ubifs_info {int /*<<< orphan*/  lp_mutex; scalar_t__ big_lpt; } ;

/* Variables and functions */
 int FUNC0 (struct ubifs_info*) ; 
 int FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ubifs_info*) ; 

int FUNC5(struct ubifs_info *c)
{
	int err;

	FUNC2(&c->lp_mutex);
	err = FUNC1(c);
	if (err)
		goto out;
	if (c->big_lpt)
		while (FUNC4(c)) {
			FUNC3(&c->lp_mutex);
			err = FUNC0(c);
			if (err)
				return err;
			FUNC2(&c->lp_mutex);
		}
out:
	FUNC3(&c->lp_mutex);
	return err;
}