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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ SPU_MEMORY_BASE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(u32 toi, u32 what, int length)
{
	int i;
	unsigned long flags;
	if (FUNC2(length % 4))
		return;
	for (i = 0; i < length; i++) {
		if (!(i % 8))
			FUNC3();
		FUNC1(flags);
		FUNC4(what, toi + SPU_MEMORY_BASE);
		FUNC0(flags);
		toi++;
	}
}