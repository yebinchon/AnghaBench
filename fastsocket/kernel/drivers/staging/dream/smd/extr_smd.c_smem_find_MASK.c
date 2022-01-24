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
 unsigned int FUNC0 (unsigned int,int) ; 
 void* FUNC1 (unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,unsigned int,unsigned int) ; 

void *FUNC3(unsigned id, unsigned size_in)
{
	unsigned size;
	void *ptr;

	ptr = FUNC1(id, &size);
	if (!ptr)
		return 0;

	size_in = FUNC0(size_in, 8);
	if (size_in != size) {
		FUNC2("smem_find(%d, %d): wrong size %d\n",
		       id, size_in, size);
		return 0;
	}

	return ptr;
}