#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union futex_key {int dummy; } futex_key ;
struct hrtimer_sleeper {int /*<<< orphan*/  task; } ;
struct TYPE_2__ {int /*<<< orphan*/  plist; } ;
struct futex_q {TYPE_1__ list; int /*<<< orphan*/ * lock_ptr; int /*<<< orphan*/  key; } ;
struct futex_hash_bucket {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ERESTARTNOINTR ; 
 int ETIMEDOUT ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,union futex_key*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
int FUNC4(struct futex_hash_bucket *hb,
				   struct futex_q *q, union futex_key *key2,
				   struct hrtimer_sleeper *timeout)
{
	int ret = 0;

	/*
	 * With the hb lock held, we avoid races while we process the wakeup.
	 * We only need to hold hb (and not hb2) to ensure atomicity as the
	 * wakeup code can't change q.key from uaddr to uaddr2 if we hold hb.
	 * It can't be requeued from uaddr2 to something else since we don't
	 * support a PI aware source futex for requeue.
	 */
	if (!FUNC1(&q->key, key2)) {
		FUNC0(q->lock_ptr && (&hb->lock != q->lock_ptr));
		/*
		 * We were woken prior to requeue by a timeout or a signal.
		 * Unqueue the futex_q and determine which it was.
		 */
		FUNC2(&q->list, &q->list.plist);

		/* Handle spurious wakeups gracefully */
		ret = -EWOULDBLOCK;
		if (timeout && !timeout->task)
			ret = -ETIMEDOUT;
		else if (FUNC3(current))
			ret = -ERESTARTNOINTR;
	}
	return ret;
}