#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union futex_key {int dummy; } futex_key ;
struct TYPE_5__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_4__ {TYPE_3__ plist; } ;
struct futex_q {int /*<<< orphan*/  task; TYPE_1__ list; int /*<<< orphan*/ * lock_ptr; int /*<<< orphan*/ * rt_waiter; union futex_key key; } ;
struct futex_hash_bucket {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (union futex_key*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_3__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
void FUNC5(struct futex_q *q, union futex_key *key,
			   struct futex_hash_bucket *hb)
{
	FUNC1(key);
	q->key = *key;

	FUNC0(FUNC3(&q->list));
	FUNC2(&q->list, &q->list.plist);

	FUNC0(!q->rt_waiter);
	q->rt_waiter = NULL;

	q->lock_ptr = &hb->lock;
#ifdef CONFIG_DEBUG_PI_LIST
	q->list.plist.lock = &hb->lock;
#endif

	FUNC4(q->task, TASK_NORMAL);
}