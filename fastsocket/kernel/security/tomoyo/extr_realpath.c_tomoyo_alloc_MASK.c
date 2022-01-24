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
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (size_t const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tomoyo_dynamic_memory_size ; 

void *FUNC3(const size_t size)
{
	void *p = FUNC2(size, GFP_KERNEL);
	if (p)
		FUNC0(FUNC1(p), &tomoyo_dynamic_memory_size);
	return p;
}