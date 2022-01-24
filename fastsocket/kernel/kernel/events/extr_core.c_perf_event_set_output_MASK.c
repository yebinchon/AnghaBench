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
struct ring_buffer {int dummy; } ;
struct perf_event {int cpu; scalar_t__ ctx; int /*<<< orphan*/  mmap_mutex; struct ring_buffer* rb; int /*<<< orphan*/  mmap_count; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer*,struct ring_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,struct ring_buffer*) ; 
 struct ring_buffer* FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct ring_buffer*) ; 

__attribute__((used)) static int
FUNC7(struct perf_event *event, struct perf_event *output_event)
{
	struct ring_buffer *rb = NULL, *old_rb = NULL;
	int ret = -EINVAL;

	if (!output_event)
		goto set;

	/* don't allow circular references */
	if (event == output_event)
		goto out;

	/*
	 * Don't allow cross-cpu buffers
	 */
	if (output_event->cpu != event->cpu)
		goto out;

	/*
	 * If its not a per-cpu rb, it must be the same task.
	 */
	if (output_event->cpu == -1 && output_event->ctx != event->ctx)
		goto out;

set:
	FUNC1(&event->mmap_mutex);
	/* Can't redirect output if we've got an active mmap() */
	if (FUNC0(&event->mmap_count))
		goto unlock;

	if (output_event) {
		/* get the rb we want to redirect to */
		rb = FUNC5(output_event);
		if (!rb)
			goto unlock;
	}

	old_rb = event->rb;
	FUNC3(event->rb, rb);
	if (old_rb)
		FUNC4(event, old_rb);
	ret = 0;
unlock:
	FUNC2(&event->mmap_mutex);

	if (old_rb)
		FUNC6(old_rb);
out:
	return ret;
}