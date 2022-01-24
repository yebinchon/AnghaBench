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
struct ring_buffer {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  event_list; } ;
struct perf_event {int /*<<< orphan*/  rb_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event,
			       struct ring_buffer *rb)
{
	unsigned long flags;

	if (!FUNC1(&event->rb_entry))
		return;

	FUNC2(&rb->event_lock, flags);
	if (!FUNC1(&event->rb_entry))
		goto unlock;

	FUNC0(&event->rb_entry, &rb->event_list);
unlock:
	FUNC3(&rb->event_lock, flags);
}