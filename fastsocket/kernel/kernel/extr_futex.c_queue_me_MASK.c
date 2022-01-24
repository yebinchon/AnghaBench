#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_6__ {TYPE_1__ plist; } ;
struct futex_q {TYPE_4__* task; TYPE_2__ list; } ;
struct futex_hash_bucket {int /*<<< orphan*/  lock; int /*<<< orphan*/  chain; } ;
struct TYPE_7__ {int /*<<< orphan*/  normal_prio; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_RT_PRIO ; 
 TYPE_4__* current ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct futex_q *q, struct futex_hash_bucket *hb)
{
	int prio;

	/*
	 * The priority used to register this element is
	 * - either the real thread-priority for the real-time threads
	 * (i.e. threads with a priority lower than MAX_RT_PRIO)
	 * - or MAX_RT_PRIO for non-RT threads.
	 * Thus, all RT-threads are woken first in priority order, and
	 * the others are woken last, in FIFO order.
	 */
	prio = FUNC0(current->normal_prio, MAX_RT_PRIO);

	FUNC2(&q->list, prio);
#ifdef CONFIG_DEBUG_PI_LIST
	q->list.plist.lock = &hb->lock;
#endif
	FUNC1(&q->list, &hb->chain);
	q->task = current;
	FUNC3(&hb->lock);
}