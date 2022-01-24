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
struct seq_oss_writeq {int /*<<< orphan*/  sync_lock; int /*<<< orphan*/  sync_sleep; scalar_t__ sync_event_put; int /*<<< orphan*/  sync_time; } ;
typedef  int /*<<< orphan*/  abstime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct seq_oss_writeq *q, abstime_t time)
{
	unsigned long flags;

	FUNC0(&q->sync_lock, flags);
	q->sync_time = time;
	q->sync_event_put = 0;
	if (FUNC2(&q->sync_sleep)) {
		FUNC3(&q->sync_sleep);
	}
	FUNC1(&q->sync_lock, flags);
}