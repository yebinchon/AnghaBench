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
struct ring_buffer_per_cpu {TYPE_1__* commit_page; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_2__ {void* page; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long FUNC0 (struct ring_buffer_per_cpu*) ; 
 unsigned long FUNC1 (struct ring_buffer_event*) ; 

__attribute__((used)) static inline int
FUNC2(struct ring_buffer_per_cpu *cpu_buffer,
		   struct ring_buffer_event *event)
{
	unsigned long addr = (unsigned long)event;
	unsigned long index;

	index = FUNC1(event);
	addr &= PAGE_MASK;

	return cpu_buffer->commit_page->page == (void *)addr &&
		FUNC0(cpu_buffer) == index;
}