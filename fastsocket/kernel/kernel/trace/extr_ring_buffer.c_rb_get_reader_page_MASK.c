#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ring_buffer_per_cpu {int /*<<< orphan*/  lock; struct buffer_page* reader_page; int /*<<< orphan*/  head_page; int /*<<< orphan*/  pages; struct buffer_page* commit_page; } ;
struct TYPE_6__ {TYPE_2__* next; int /*<<< orphan*/  prev; } ;
struct buffer_page {scalar_t__ read; TYPE_3__ list; TYPE_1__* page; int /*<<< orphan*/  entries; int /*<<< orphan*/  write; } ;
struct TYPE_5__ {TYPE_3__* prev; } ;
struct TYPE_4__ {int /*<<< orphan*/  commit; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ring_buffer_per_cpu*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct buffer_page*,struct buffer_page*) ; 
 int /*<<< orphan*/  FUNC7 (struct ring_buffer_per_cpu*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct buffer_page*) ; 
 int /*<<< orphan*/  FUNC9 (struct ring_buffer_per_cpu*) ; 
 struct buffer_page* FUNC10 (struct ring_buffer_per_cpu*) ; 
 int /*<<< orphan*/  FUNC11 (struct ring_buffer_per_cpu*,TYPE_3__*) ; 

__attribute__((used)) static struct buffer_page *
FUNC12(struct ring_buffer_per_cpu *cpu_buffer)
{
	struct buffer_page *reader = NULL;
	unsigned long flags;
	int nr_loops = 0;
	int ret;

	FUNC4(flags);
	FUNC1(&cpu_buffer->lock);

 again:
	/*
	 * This should normally only loop twice. But because the
	 * start of the reader inserts an empty page, it causes
	 * a case where we will loop three times. There should be no
	 * reason to loop four times (that I know of).
	 */
	if (FUNC0(cpu_buffer, ++nr_loops > 3)) {
		reader = NULL;
		goto out;
	}

	reader = cpu_buffer->reader_page;

	/* If there's more to read, return this page */
	if (cpu_buffer->reader_page->read < FUNC8(reader))
		goto out;

	/* Never should we have an index greater than the size */
	if (FUNC0(cpu_buffer,
		       cpu_buffer->reader_page->read > FUNC8(reader)))
		goto out;

	/* check if we caught up to the tail */
	reader = NULL;
	if (cpu_buffer->commit_page == cpu_buffer->reader_page)
		goto out;

	/*
	 * Reset the reader page to size zero.
	 */
	FUNC5(&cpu_buffer->reader_page->write, 0);
	FUNC5(&cpu_buffer->reader_page->entries, 0);
	FUNC5(&cpu_buffer->reader_page->page->commit, 0);

 spin:
	/*
	 * Splice the empty reader page into the list around the head.
	 */
	reader = FUNC10(cpu_buffer);
	cpu_buffer->reader_page->list.next = reader->list.next;
	cpu_buffer->reader_page->list.prev = reader->list.prev;

	/*
	 * cpu_buffer->pages just needs to point to the buffer, it
	 *  has no specific buffer page to point to. Lets move it out
	 *  of our way so we don't accidently swap it.
	 */
	cpu_buffer->pages = reader->list.prev;

	/* The reader page will be pointing to the new head */
	FUNC11(cpu_buffer, &cpu_buffer->reader_page->list);

	/*
	 * Here's the tricky part.
	 *
	 * We need to move the pointer past the header page.
	 * But we can only do that if a writer is not currently
	 * moving it. The page before the header page has the
	 * flag bit '1' set if it is pointing to the page we want.
	 * but if the writer is in the process of moving it
	 * than it will be '2' or already moved '0'.
	 */

	ret = FUNC6(reader, cpu_buffer->reader_page);

	/*
	 * If we did not convert it, then we must try again.
	 */
	if (!ret)
		goto spin;

	/*
	 * Yeah! We succeeded in replacing the page.
	 *
	 * Now make the new head point back to the reader page.
	 */
	reader->list.next->prev = &cpu_buffer->reader_page->list;
	FUNC7(cpu_buffer, &cpu_buffer->head_page);

	/* Finally update the reader page to the new head */
	cpu_buffer->reader_page = reader;
	FUNC9(cpu_buffer);

	goto again;

 out:
	FUNC2(&cpu_buffer->lock);
	FUNC3(flags);

	return reader;
}