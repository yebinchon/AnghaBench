#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ring_buffer_per_cpu {int /*<<< orphan*/  read_stamp; TYPE_2__* reader_page; } ;
struct ring_buffer_iter {TYPE_2__* head_page; int /*<<< orphan*/  read_stamp; int /*<<< orphan*/  head; struct ring_buffer_per_cpu* cpu_buffer; } ;
struct TYPE_4__ {TYPE_1__* page; int /*<<< orphan*/  read; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  time_stamp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct ring_buffer_per_cpu*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct ring_buffer_iter *iter)
{
	struct ring_buffer_per_cpu *cpu_buffer = iter->cpu_buffer;

	/* Iterator usage is expected to have record disabled */
	if (FUNC0(&cpu_buffer->reader_page->list)) {
		iter->head_page = FUNC1(cpu_buffer);
		if (FUNC2(!iter->head_page))
			return;
		iter->head = iter->head_page->read;
	} else {
		iter->head_page = cpu_buffer->reader_page;
		iter->head = cpu_buffer->reader_page->read;
	}
	if (iter->head)
		iter->read_stamp = cpu_buffer->read_stamp;
	else
		iter->read_stamp = iter->head_page->page->time_stamp;
}