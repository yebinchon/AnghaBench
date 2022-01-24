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
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(void *virt, size_t size)
{
	unsigned long addr = (unsigned long)virt;
	unsigned long end = addr + FUNC0(size);

	while (addr < end) {
		FUNC1(addr);
		addr += PAGE_SIZE;
	}
}