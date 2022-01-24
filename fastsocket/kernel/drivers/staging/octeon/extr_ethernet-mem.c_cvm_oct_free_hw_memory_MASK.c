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
 scalar_t__ USE_32BIT_SHARED ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(int pool, int size, int elements)
{
	if (USE_32BIT_SHARED) {
		FUNC4("Warning: 32 shared memory is not freeable\n");
	} else {
		char *memory;
		do {
			memory = FUNC0(pool);
			if (memory) {
				elements--;
				FUNC2(FUNC3(FUNC1(memory)));
			}
		} while (memory);

		if (elements < 0)
			FUNC4("Freeing of pool %u had too many "
				   "buffers (%d)\n",
			       pool, elements);
		else if (elements > 0)
			FUNC4("Warning: Freeing of pool %u is "
				"missing %d buffers\n",
			     pool, elements);
	}
}