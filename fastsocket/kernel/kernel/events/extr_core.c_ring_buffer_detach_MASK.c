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
struct ring_buffer {int /*<<< orphan*/  event_lock; } ;
struct perf_event {int /*<<< orphan*/  waitq; int /*<<< orphan*/  rb_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event,
			       struct ring_buffer *rb)
{
	unsigned long flags;

	if (FUNC1(&event->rb_entry))
		return;

	FUNC2(&rb->event_lock, flags);
	FUNC0(&event->rb_entry);
	FUNC4(&event->waitq);
	FUNC3(&rb->event_lock, flags);
}