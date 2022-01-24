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
 unsigned long FUNC0 (unsigned long,int) ; 
 unsigned long ARCH_SLAB_MINALIGN ; 
 unsigned long SLAB_HWCACHE_ALIGN ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC3(unsigned long flags,
		unsigned long align, unsigned long size)
{
	/*
	 * If the user wants hardware cache aligned objects then follow that
	 * suggestion if the object is sufficiently large.
	 *
	 * The hardware cache alignment cannot override the specified
	 * alignment though. If that is greater then use it.
	 */
	if (flags & SLAB_HWCACHE_ALIGN) {
		unsigned long ralign = FUNC1();
		while (size <= ralign / 2)
			ralign /= 2;
		align = FUNC2(align, ralign);
	}

	if (align < ARCH_SLAB_MINALIGN)
		align = ARCH_SLAB_MINALIGN;

	return FUNC0(align, sizeof(void *));
}