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
typedef  scalar_t__ u64 ;
struct ring_buffer_per_cpu {scalar_t__ tail_page; scalar_t__ commit_page; scalar_t__ write_stamp; int /*<<< orphan*/  buffer; int /*<<< orphan*/  commits; int /*<<< orphan*/  committing; } ;
struct ring_buffer_event {scalar_t__ time_delta; } ;
struct ring_buffer {int dummy; } ;

/* Variables and functions */
 struct ring_buffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int FUNC1 (struct ring_buffer_event*) ; 
 scalar_t__ FUNC2 (struct ring_buffer_per_cpu*,int) ; 
 struct ring_buffer_event* FUNC3 (struct ring_buffer_per_cpu*,int /*<<< orphan*/ ,unsigned long,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ring_buffer_per_cpu*,scalar_t__*,scalar_t__*) ; 
 unsigned long FUNC8 (unsigned long) ; 
 scalar_t__ FUNC9 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct ring_buffer_per_cpu*,struct ring_buffer_event*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct ring_buffer_per_cpu*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static struct ring_buffer_event *
FUNC17(struct ring_buffer *buffer,
		      struct ring_buffer_per_cpu *cpu_buffer,
		      unsigned long length)
{
	struct ring_buffer_event *event;
	u64 ts, delta = 0;
	int commit = 0;
	int nr_loops = 0;

	FUNC13(cpu_buffer);

#ifdef CONFIG_RING_BUFFER_ALLOW_SWAP
	/*
	 * Due to the ability to swap a cpu buffer from a buffer
	 * it is possible it was swapped before we committed.
	 * (committing stops a swap). We check for it here and
	 * if it happened, we have to fail the write.
	 */
	barrier();
	if (unlikely(ACCESS_ONCE(cpu_buffer->buffer) != buffer)) {
		local_dec(&cpu_buffer->committing);
		local_dec(&cpu_buffer->commits);
		return NULL;
	}
#endif

	length = FUNC8(length);
 again:
	/*
	 * We allow for interrupts to reenter here and do a trace.
	 * If one does, it will cause this original code to loop
	 * back here. Even with heavy interrupts happening, this
	 * should only happen a few times in a row. If this happens
	 * 1000 times in a row, there must be either an interrupt
	 * storm or we have something buggy.
	 * Bail!
	 */
	if (FUNC2(cpu_buffer, ++nr_loops > 1000))
		goto out_fail;

	ts = FUNC14(cpu_buffer->buffer);

	/*
	 * Only the first commit can update the timestamp.
	 * Yes there is a race here. If an interrupt comes in
	 * just after the conditional and it traces too, then it
	 * will also check the deltas. More than one timestamp may
	 * also be made. But only the entry that did the actual
	 * commit will be something other than zero.
	 */
	if (FUNC5(cpu_buffer->tail_page == cpu_buffer->commit_page &&
		   FUNC12(cpu_buffer->tail_page) ==
		   FUNC9(cpu_buffer))) {
		u64 diff;

		diff = ts - cpu_buffer->write_stamp;

		/* make sure this diff is calculated here */
		FUNC4();

		/* Did the write stamp get updated already? */
		if (FUNC16(ts < cpu_buffer->write_stamp))
			goto get_event;

		delta = diff;
		if (FUNC16(FUNC15(delta))) {

			commit = FUNC7(cpu_buffer, &ts, &delta);
			if (commit == -EBUSY)
				goto out_fail;

			if (commit == -EAGAIN)
				goto again;

			FUNC2(cpu_buffer, commit < 0);
		}
	}

 get_event:
	event = FUNC3(cpu_buffer, 0, length, &ts);
	if (FUNC16(FUNC1(event) == -EAGAIN))
		goto again;

	if (!event)
		goto out_fail;

	if (!FUNC11(cpu_buffer, event))
		delta = 0;

	event->time_delta = delta;

	return event;

 out_fail:
	FUNC10(cpu_buffer);
	return NULL;
}