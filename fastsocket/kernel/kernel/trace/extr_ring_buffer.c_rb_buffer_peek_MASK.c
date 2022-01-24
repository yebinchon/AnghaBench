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
struct ring_buffer_per_cpu {int /*<<< orphan*/  cpu; int /*<<< orphan*/  buffer; scalar_t__ read_stamp; } ;
struct ring_buffer_event {int type_len; scalar_t__ time_delta; } ;
struct buffer_page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int RB_TIMESTAMPS_PER_PAGE ; 
 scalar_t__ FUNC1 (struct ring_buffer_per_cpu*,int) ; 
#define  RINGBUF_TYPE_DATA 131 
#define  RINGBUF_TYPE_PADDING 130 
#define  RINGBUF_TYPE_TIME_EXTEND 129 
#define  RINGBUF_TYPE_TIME_STAMP 128 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer_per_cpu*) ; 
 struct buffer_page* FUNC3 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC5 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static struct ring_buffer_event *
FUNC7(struct ring_buffer_per_cpu *cpu_buffer, u64 *ts)
{
	struct ring_buffer_event *event;
	struct buffer_page *reader;
	int nr_loops = 0;

 again:
	/*
	 * We repeat when a timestamp is encountered. It is possible
	 * to get multiple timestamps from an interrupt entering just
	 * as one timestamp is about to be written, or from discarded
	 * commits. The most that we can have is the number on a single page.
	 */
	if (FUNC1(cpu_buffer, ++nr_loops > RB_TIMESTAMPS_PER_PAGE))
		return NULL;

	reader = FUNC3(cpu_buffer);
	if (!reader)
		return NULL;

	event = FUNC5(cpu_buffer);

	switch (event->type_len) {
	case RINGBUF_TYPE_PADDING:
		if (FUNC4(event))
			FUNC1(cpu_buffer, 1);
		/*
		 * Because the writer could be discarding every
		 * event it creates (which would probably be bad)
		 * if we were to go back to "again" then we may never
		 * catch up, and will trigger the warn on, or lock
		 * the box. Return the padding, and we will release
		 * the current locks, and try again.
		 */
		return event;

	case RINGBUF_TYPE_TIME_EXTEND:
		/* Internal data, OK to advance */
		FUNC2(cpu_buffer);
		goto again;

	case RINGBUF_TYPE_TIME_STAMP:
		/* FIXME: not implemented */
		FUNC2(cpu_buffer);
		goto again;

	case RINGBUF_TYPE_DATA:
		if (ts) {
			*ts = cpu_buffer->read_stamp + event->time_delta;
			FUNC6(cpu_buffer->buffer,
							 cpu_buffer->cpu, ts);
		}
		return event;

	default:
		FUNC0();
	}

	return NULL;
}