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
typedef  int /*<<< orphan*/  uintBPL_t ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC2(void *addr, int size, int offset)
{
	uintBPL_t *p = ((uintBPL_t *) addr) + (offset / BITS_PER_LONG);
	int result = offset & ~(BITS_PER_LONG - 1);
	unsigned long tmp;

	if (offset >= size)
		return size;
	size -= result;
	offset &= (BITS_PER_LONG - 1);
	if (offset) {
		tmp = FUNC1(p++);
		tmp &= ~0UL << offset;
		if (size < BITS_PER_LONG)
			goto found_first;
		if (tmp)
			goto found_middle;
		size -= BITS_PER_LONG;
		result += BITS_PER_LONG;
	}
	while (size & ~(BITS_PER_LONG - 1)) {
		tmp = FUNC1(p++);
		if (tmp)
			goto found_middle;
		result += BITS_PER_LONG;
		size -= BITS_PER_LONG;
	}
	if (!size)
		return result;
	tmp = FUNC1(p);
found_first:
	tmp &= ~0UL >> (BITS_PER_LONG - size);
found_middle:
	return result + FUNC0(~tmp);
}