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
struct res_counter {int /*<<< orphan*/  lock; struct res_counter* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct res_counter*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct res_counter *counter, unsigned long val)
{
	unsigned long flags;
	struct res_counter *c;

	FUNC1(flags);
	for (c = counter; c != NULL; c = c->parent) {
		FUNC3(&c->lock);
		FUNC2(c, val);
		FUNC4(&c->lock);
	}
	FUNC0(flags);
}