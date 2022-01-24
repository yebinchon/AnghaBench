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
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/  timer; } ;
struct rpc_wait_queue {unsigned char maxpriority; char const* name; TYPE_1__ timer_list; scalar_t__ qlen; int /*<<< orphan*/ * tasks; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __rpc_queue_timer_fn ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct rpc_wait_queue *queue, const char *qname, unsigned char nr_queues)
{
	int i;

	FUNC4(&queue->lock);
	for (i = 0; i < FUNC0(queue->tasks); i++)
		FUNC1(&queue->tasks[i]);
	queue->maxpriority = nr_queues - 1;
	FUNC2(queue);
	queue->qlen = 0;
	FUNC3(&queue->timer_list.timer, __rpc_queue_timer_fn, (unsigned long)queue);
	FUNC1(&queue->timer_list.list);
#ifdef RPC_DEBUG
	queue->name = qname;
#endif
}