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
 int EBUSY ; 
 unsigned long FUNC0 (unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(unsigned long *addr, unsigned long mask_to_set)
{
	unsigned long val, nval;

	nval = *addr;
	do {
		val = nval;
		if (val & mask_to_set)
			return -EBUSY;
		FUNC1();
	} while ((nval = FUNC0(addr, val, val | mask_to_set)) != val);

	return 0;
}