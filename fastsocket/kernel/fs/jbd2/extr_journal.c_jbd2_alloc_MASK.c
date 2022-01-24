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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  __GFP_REPEAT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (size_t) ; 

void *FUNC6(size_t size, gfp_t flags)
{
	void *ptr;

	FUNC0(size & (size-1)); /* Must be a power of 2 */

	flags |= __GFP_REPEAT;
	if (size == PAGE_SIZE)
		ptr = (void *)FUNC1(flags, 0);
	else if (size > PAGE_SIZE) {
		int order = FUNC2(size);

		if (order < 3)
			ptr = (void *)FUNC1(flags, order);
		else
			ptr = FUNC5(size);
	} else
		ptr = FUNC4(FUNC3(size), flags);

	/* Check alignment; SLUB has gotten this wrong in the past,
	 * and this can lead to user data corruption! */
	FUNC0(((unsigned long) ptr) & (size-1));

	return ptr;
}