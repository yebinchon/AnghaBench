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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int CONFIG_CAVIUM_RESERVE32 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ USE_32BIT_SHARED ; 
 char* FUNC0 (int,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int pool, int size, int elements)
{
	char *memory;
	int freed = elements;

	if (USE_32BIT_SHARED) {
		extern uint64_t octeon_reserve32_memory;

		memory =
		    FUNC0(elements * size, 128,
					     octeon_reserve32_memory,
					     octeon_reserve32_memory +
					     (CONFIG_CAVIUM_RESERVE32 << 20) -
					     1);
		if (memory == NULL)
			FUNC3("Unable to allocate %u bytes for FPA pool %d\n",
			      elements * size, pool);

		FUNC4("Memory range %p - %p reserved for "
			  "hardware\n", memory,
			  memory + elements * size - 1);

		while (freed) {
			FUNC1(memory, pool, 0);
			memory += size;
			freed--;
		}
	} else {
		while (freed) {
			/* We need to force alignment to 128 bytes here */
			memory = FUNC2(size + 127, GFP_ATOMIC);
			if (FUNC6(memory == NULL)) {
				FUNC5("Unable to allocate %u bytes for "
					   "FPA pool %d\n",
				     elements * size, pool);
				break;
			}
			memory = (char *)(((unsigned long)memory + 127) & -128);
			FUNC1(memory, pool, 0);
			freed--;
		}
	}
	return elements - freed;
}