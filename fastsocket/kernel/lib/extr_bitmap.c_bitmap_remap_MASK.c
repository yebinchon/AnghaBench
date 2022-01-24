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
 int FUNC0 (unsigned long const*,int,int) ; 
 int FUNC1 (unsigned long const*,int,int) ; 
 int FUNC2 (unsigned long const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int) ; 
 int FUNC4 (unsigned long const*,int) ; 
 int FUNC5 (unsigned long const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned long*) ; 

void FUNC7(unsigned long *dst, const unsigned long *src,
		const unsigned long *old, const unsigned long *new,
		int bits)
{
	int oldbit, w;

	if (dst == src)		/* following doesn't handle inplace remaps */
		return;
	FUNC3(dst, bits);

	w = FUNC2(new, bits);
	for (oldbit = FUNC4(src, bits);
	     oldbit < bits;
	     oldbit = FUNC5(src, bits, oldbit + 1)) {
	     	int n = FUNC1(old, oldbit, bits);
		if (n < 0 || w == 0)
			FUNC6(oldbit, dst);	/* identity map */
		else
			FUNC6(FUNC0(new, n % w, bits), dst);
	}
}