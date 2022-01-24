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
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int) ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

void FUNC5(void *ptr, size_t size)
{
	if (size == PAGE_SIZE) {
		FUNC0((unsigned long)ptr, 0);
		return;
	}
	if (size > PAGE_SIZE) {
		int order = FUNC1(size);

		if (order < 3)
			FUNC0((unsigned long)ptr, order);
		else
			FUNC4(ptr);
		return;
	}
	FUNC3(FUNC2(size), ptr);
}