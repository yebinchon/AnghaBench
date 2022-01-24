#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ring_buffer_per_cpu {TYPE_3__* tail_page; TYPE_3__* commit_page; int /*<<< orphan*/  write_stamp; TYPE_1__* buffer; } ;
struct TYPE_8__ {TYPE_2__* page; } ;
struct TYPE_7__ {int /*<<< orphan*/  commit; int /*<<< orphan*/  time_stamp; } ;
struct TYPE_6__ {int pages; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ring_buffer_per_cpu*,int) ; 
 int RB_WRITE_MASK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct ring_buffer_per_cpu*,TYPE_3__**) ; 
 int FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct ring_buffer_per_cpu *cpu_buffer)
{
	unsigned long max_count;

	/*
	 * We only race with interrupts and NMIs on this CPU.
	 * If we own the commit event, then we can commit
	 * all others that interrupted us, since the interruptions
	 * are in stack format (they finish before they come
	 * back to us). This allows us to do a simple loop to
	 * assign the commit to the tail.
	 */
 again:
	max_count = cpu_buffer->buffer->pages * 100;

	while (cpu_buffer->commit_page != cpu_buffer->tail_page) {
		if (FUNC0(cpu_buffer, !(--max_count)))
			return;
		if (FUNC0(cpu_buffer,
			       FUNC6(cpu_buffer->tail_page)))
			return;
		FUNC3(&cpu_buffer->commit_page->page->commit,
			  FUNC7(cpu_buffer->commit_page));
		FUNC5(cpu_buffer, &cpu_buffer->commit_page);
		cpu_buffer->write_stamp =
			cpu_buffer->commit_page->page->time_stamp;
		/* add barrier to keep gcc from optimizing too much */
		FUNC1();
	}
	while (FUNC4(cpu_buffer) !=
	       FUNC7(cpu_buffer->commit_page)) {

		FUNC3(&cpu_buffer->commit_page->page->commit,
			  FUNC7(cpu_buffer->commit_page));
		FUNC0(cpu_buffer,
			   FUNC2(&cpu_buffer->commit_page->page->commit) &
			   ~RB_WRITE_MASK);
		FUNC1();
	}

	/* again, keep gcc from optimizing */
	FUNC1();

	/*
	 * If an interrupt came in just after the first while loop
	 * and pushed the tail page forward, we will be left with
	 * a dangling commit that will never go forward.
	 */
	if (FUNC8(cpu_buffer->commit_page != cpu_buffer->tail_page))
		goto again;
}