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
 unsigned long FUNC0 (unsigned long*,unsigned long,unsigned long,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,unsigned long,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned int,unsigned long,unsigned long) ; 

unsigned long FUNC3(unsigned long *map, unsigned long size,
			       unsigned long start, unsigned int nr,
			       unsigned long shift, unsigned long boundary_size,
			       unsigned long align_mask)
{
	unsigned long index;
again:
	index = FUNC0(map, size, start, nr, align_mask);
	if (index != -1) {
		if (FUNC2(index, nr, shift, boundary_size)) {
			/* we could do more effectively */
			start = index + 1;
			goto again;
		}
		FUNC1(map, index, nr);
	}
	return index;
}