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
 int FUNC2 (struct res_counter*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct res_counter*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct res_counter *counter, unsigned long val,
			struct res_counter **limit_fail_at)
{
	int ret;
	unsigned long flags;
	struct res_counter *c, *u;

	*limit_fail_at = NULL;
	FUNC1(flags);
	for (c = counter; c != NULL; c = c->parent) {
		FUNC4(&c->lock);
		ret = FUNC2(c, val);
		FUNC5(&c->lock);
		if (ret < 0) {
			*limit_fail_at = c;
			goto undo;
		}
	}
	ret = 0;
	goto done;
undo:
	for (u = counter; u != c; u = u->parent) {
		FUNC4(&u->lock);
		FUNC3(u, val);
		FUNC5(&u->lock);
	}
done:
	FUNC0(flags);
	return ret;
}