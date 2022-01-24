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
struct ring_buffer_per_cpu {int /*<<< orphan*/  cpu; struct ring_buffer* buffer; } ;
struct ring_buffer_iter {scalar_t__ read_stamp; struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer_event {int type_len; scalar_t__ time_delta; } ;
struct ring_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int RB_TIMESTAMPS_PER_PAGE ; 
 scalar_t__ FUNC1 (struct ring_buffer_per_cpu*,int) ; 
#define  RINGBUF_TYPE_DATA 131 
#define  RINGBUF_TYPE_PADDING 130 
#define  RINGBUF_TYPE_TIME_EXTEND 129 
#define  RINGBUF_TYPE_TIME_STAMP 128 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ring_buffer_iter*) ; 
 struct ring_buffer_event* FUNC4 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer_event*) ; 
 scalar_t__ FUNC6 (struct ring_buffer_per_cpu*) ; 
 scalar_t__ FUNC7 (struct ring_buffer_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ring_buffer*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static struct ring_buffer_event *
FUNC9(struct ring_buffer_iter *iter, u64 *ts)
{
	struct ring_buffer *buffer;
	struct ring_buffer_per_cpu *cpu_buffer;
	struct ring_buffer_event *event;
	int nr_loops = 0;

	if (FUNC7(iter))
		return NULL;

	cpu_buffer = iter->cpu_buffer;
	buffer = cpu_buffer->buffer;

 again:
	/*
	 * We repeat when a timestamp is encountered.
	 * We can get multiple timestamps by nested interrupts or also
	 * if filtering is on (discarding commits). Since discarding
	 * commits can be frequent we can get a lot of timestamps.
	 * But we limit them by not adding timestamps if they begin
	 * at the start of a page.
	 */
	if (FUNC1(cpu_buffer, ++nr_loops > RB_TIMESTAMPS_PER_PAGE))
		return NULL;

	if (FUNC6(cpu_buffer))
		return NULL;

	event = FUNC4(iter);

	switch (event->type_len) {
	case RINGBUF_TYPE_PADDING:
		if (FUNC5(event)) {
			FUNC3(iter);
			goto again;
		}
		FUNC2(iter);
		return event;

	case RINGBUF_TYPE_TIME_EXTEND:
		/* Internal data, OK to advance */
		FUNC2(iter);
		goto again;

	case RINGBUF_TYPE_TIME_STAMP:
		/* FIXME: not implemented */
		FUNC2(iter);
		goto again;

	case RINGBUF_TYPE_DATA:
		if (ts) {
			*ts = iter->read_stamp + event->time_delta;
			FUNC8(buffer,
							 cpu_buffer->cpu, ts);
		}
		return event;

	default:
		FUNC0();
	}

	return NULL;
}