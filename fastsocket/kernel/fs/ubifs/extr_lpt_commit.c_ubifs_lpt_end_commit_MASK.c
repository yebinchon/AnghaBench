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
struct ubifs_info {int /*<<< orphan*/  lp_mutex; int /*<<< orphan*/  lpt_cnext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ubifs_info*) ; 

int FUNC5(struct ubifs_info *c)
{
	int err;

	FUNC0("");

	if (!c->lpt_cnext)
		return 0;

	err = FUNC4(c);
	if (err)
		return err;

	FUNC2(&c->lp_mutex);
	FUNC1(c);
	FUNC3(&c->lp_mutex);

	return 0;
}