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

void FUNC4(unsigned long *dst, const unsigned long *orig,
			int sz, int bits)
{
	int oldbit;

	if (dst == orig)	/* following doesn't handle inplace mappings */
		return;
	FUNC0(dst, bits);

	for (oldbit = FUNC1(orig, bits);
	     oldbit < bits;
	     oldbit = FUNC2(orig, bits, oldbit + 1))
		FUNC3(oldbit % sz, dst);
}