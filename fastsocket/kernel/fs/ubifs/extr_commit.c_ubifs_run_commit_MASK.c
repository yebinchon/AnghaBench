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
struct ubifs_info {scalar_t__ cmt_state; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  commit_sem; } ;

/* Variables and functions */
 scalar_t__ COMMIT_BROKEN ; 
 scalar_t__ COMMIT_RUNNING_BACKGROUND ; 
 scalar_t__ COMMIT_RUNNING_REQUIRED ; 
 int EINVAL ; 
 int FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ubifs_info*) ; 

int FUNC6(struct ubifs_info *c)
{
	int err = 0;

	FUNC2(&c->cs_lock);
	if (c->cmt_state == COMMIT_BROKEN) {
		err = -EINVAL;
		goto out;
	}

	if (c->cmt_state == COMMIT_RUNNING_BACKGROUND)
		/*
		 * We set the commit state to 'running required' to indicate
		 * that we want it to complete as quickly as possible.
		 */
		c->cmt_state = COMMIT_RUNNING_REQUIRED;

	if (c->cmt_state == COMMIT_RUNNING_REQUIRED) {
		FUNC3(&c->cs_lock);
		return FUNC5(c);
	}
	FUNC3(&c->cs_lock);

	/* Ok, the commit is indeed needed */

	FUNC1(&c->commit_sem);
	FUNC2(&c->cs_lock);
	/*
	 * Since we unlocked 'c->cs_lock', the state may have changed, so
	 * re-check it.
	 */
	if (c->cmt_state == COMMIT_BROKEN) {
		err = -EINVAL;
		goto out_cmt_unlock;
	}

	if (c->cmt_state == COMMIT_RUNNING_BACKGROUND)
		c->cmt_state = COMMIT_RUNNING_REQUIRED;

	if (c->cmt_state == COMMIT_RUNNING_REQUIRED) {
		FUNC4(&c->commit_sem);
		FUNC3(&c->cs_lock);
		return FUNC5(c);
	}
	c->cmt_state = COMMIT_RUNNING_REQUIRED;
	FUNC3(&c->cs_lock);

	err = FUNC0(c);
	return err;

out_cmt_unlock:
	FUNC4(&c->commit_sem);
out:
	FUNC3(&c->cs_lock);
	return err;
}