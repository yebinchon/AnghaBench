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
struct mqueue_inode_info {int /*<<< orphan*/  lock; } ;
struct ext_wait_queue {scalar_t__ state; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 scalar_t__ STATE_PENDING ; 
 scalar_t__ STATE_READY ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mqueue_inode_info*,int,struct ext_wait_queue*) ; 

__attribute__((used)) static int FUNC8(struct mqueue_inode_info *info, int sr,
			long timeout, struct ext_wait_queue *ewp)
{
	int retval;
	signed long time;

	FUNC7(info, sr, ewp);

	for (;;) {
		FUNC3(TASK_INTERRUPTIBLE);

		FUNC6(&info->lock);
		time = FUNC2(timeout);

		while (ewp->state == STATE_PENDING)
			FUNC0();

		if (ewp->state == STATE_READY) {
			retval = 0;
			goto out;
		}
		FUNC5(&info->lock);
		if (ewp->state == STATE_READY) {
			retval = 0;
			goto out_unlock;
		}
		if (FUNC4(current)) {
			retval = -ERESTARTSYS;
			break;
		}
		if (time == 0) {
			retval = -ETIMEDOUT;
			break;
		}
	}
	FUNC1(&ewp->list);
out_unlock:
	FUNC6(&info->lock);
out:
	return retval;
}