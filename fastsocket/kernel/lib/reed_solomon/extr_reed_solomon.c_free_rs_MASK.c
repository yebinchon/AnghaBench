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
struct rs_control {struct rs_control* genpoly; struct rs_control* index_of; struct rs_control* alpha_to; int /*<<< orphan*/  list; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rs_control*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rslistlock ; 

void FUNC4(struct rs_control *rs)
{
	FUNC2(&rslistlock);
	rs->users--;
	if(!rs->users) {
		FUNC1(&rs->list);
		FUNC0(rs->alpha_to);
		FUNC0(rs->index_of);
		FUNC0(rs->genpoly);
		FUNC0(rs);
	}
	FUNC3(&rslistlock);
}