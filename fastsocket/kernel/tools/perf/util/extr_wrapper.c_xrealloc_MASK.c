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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int) ; 

void *FUNC3(void *ptr, size_t size)
{
	void *ret = FUNC1(ptr, size);
	if (!ret && !size)
		ret = FUNC1(ptr, 1);
	if (!ret) {
		FUNC2(size, -1);
		ret = FUNC1(ptr, size);
		if (!ret && !size)
			ret = FUNC1(ptr, 1);
		if (!ret)
			FUNC0("Out of memory, realloc failed");
	}
	return ret;
}