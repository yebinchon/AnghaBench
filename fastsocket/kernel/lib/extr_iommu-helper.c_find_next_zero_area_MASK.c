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
 unsigned long FUNC0 (unsigned long*,unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long*) ; 

__attribute__((used)) static unsigned long FUNC2(unsigned long *map,
					 unsigned long size,
					 unsigned long start,
					 unsigned int nr,
					 unsigned long align_mask)
{
	unsigned long index, end, i;
again:
	index = FUNC0(map, size, start);

	/* Align allocation */
	index = (index + align_mask) & ~align_mask;

	end = index + nr;
	if (end >= size)
		return -1;
	for (i = index; i < end; i++) {
		if (FUNC1(i, map)) {
			start = i+1;
			goto again;
		}
	}
	return index;
}