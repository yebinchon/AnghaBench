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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 unsigned long VMALLOC_END ; 
 unsigned long VMALLOC_START ; 
 unsigned int VMAP_MAX_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (void const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 

void FUNC6(const void *mem, unsigned int count)
{
	unsigned long size = count << PAGE_SHIFT;
	unsigned long addr = (unsigned long)mem;

	FUNC0(!addr);
	FUNC0(addr < VMALLOC_START);
	FUNC0(addr > VMALLOC_END);
	FUNC0(addr & (PAGE_SIZE-1));

	FUNC1(mem, size);
	FUNC5(addr, addr+size);

	if (FUNC3(count <= VMAP_MAX_ALLOC))
		FUNC4(mem, size);
	else
		FUNC2(addr);
}