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
typedef  int /*<<< orphan*/  u64 ;
struct ring_buffer_per_cpu {struct buffer_page* tail_page; struct buffer_page* commit_page; } ;
struct ring_buffer_event {int dummy; } ;
struct buffer_page {TYPE_1__* page; int /*<<< orphan*/  entries; int /*<<< orphan*/  write; } ;
struct TYPE_2__ {int /*<<< orphan*/  time_stamp; } ;

/* Variables and functions */
 unsigned long BUF_PAGE_SIZE ; 
 unsigned long RB_WRITE_MASK ; 
 struct ring_buffer_event* FUNC0 (struct buffer_page*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  bitfield ; 
 int /*<<< orphan*/  FUNC2 (struct ring_buffer_event*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 unsigned long FUNC4 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ring_buffer_event* FUNC6 (struct ring_buffer_per_cpu*,unsigned long,unsigned long,struct buffer_page*,struct buffer_page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ring_buffer_event*,unsigned int,unsigned long) ; 

__attribute__((used)) static struct ring_buffer_event *
FUNC8(struct ring_buffer_per_cpu *cpu_buffer,
		  unsigned type, unsigned long length, u64 *ts)
{
	struct buffer_page *tail_page, *commit_page;
	struct ring_buffer_event *event;
	unsigned long tail, write;

	commit_page = cpu_buffer->commit_page;
	/* we just need to protect against interrupts */
	FUNC1();
	tail_page = cpu_buffer->tail_page;
	write = FUNC4(length, &tail_page->write);

	/* set write to only the index of the write */
	write &= RB_WRITE_MASK;
	tail = write - length;

	/* See if we shot pass the end of this buffer page */
	if (write > BUF_PAGE_SIZE)
		return FUNC6(cpu_buffer, length, tail,
				    commit_page, tail_page, ts);

	/* We reserved something on the buffer */

	event = FUNC0(tail_page, tail);
	FUNC2(event, bitfield);
	FUNC7(event, type, length);

	/* The passed in type is zero for DATA */
	if (FUNC3(!type))
		FUNC5(&tail_page->entries);

	/*
	 * If this is the first commit on the page, then update
	 * its timestamp.
	 */
	if (!tail)
		tail_page->page->time_stamp = *ts;

	return event;
}