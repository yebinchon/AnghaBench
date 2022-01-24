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

/* Variables and functions */
 unsigned long FUNC0 (size_t) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void *FUNC4(unsigned long addr, unsigned order, size_t size)
{
	if (addr) {
		unsigned long alloc_end = addr + (PAGE_SIZE << order);
		unsigned long used = addr + FUNC0(size);

		FUNC2(FUNC3((void *)addr), order);
		while (used < alloc_end) {
			FUNC1(used);
			used += PAGE_SIZE;
		}
	}
	return (void *)addr;
}