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
 int /*<<< orphan*/  FUNC0 (unsigned long*,int) ; 
 int FUNC1 (unsigned long const*,int) ; 
 int FUNC2 (unsigned long const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 scalar_t__ FUNC4 (int,unsigned long const*) ; 

void FUNC5(unsigned long *dst, const unsigned long *orig,
			const unsigned long *relmap, int bits)
{
	int n, m;       	/* same meaning as in above comment */

	if (dst == orig)	/* following doesn't handle inplace mappings */
		return;
	FUNC0(dst, bits);

	/*
	 * The following code is a more efficient, but less
	 * obvious, equivalent to the loop:
	 *	for (m = 0; m < bitmap_weight(relmap, bits); m++) {
	 *		n = bitmap_ord_to_pos(orig, m, bits);
	 *		if (test_bit(m, orig))
	 *			set_bit(n, dst);
	 *	}
	 */

	m = 0;
	for (n = FUNC1(relmap, bits);
	     n < bits;
	     n = FUNC2(relmap, bits, n + 1)) {
		/* m == bitmap_pos_to_ord(relmap, n, bits) */
		if (FUNC4(m, orig))
			FUNC3(n, dst);
		m++;
	}
}