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
 void* ZERO_SIZE_PTR ; 
 void* FUNC0 (void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 scalar_t__ FUNC2 (int) ; 

void *FUNC3(const void *p, size_t new_size, gfp_t flags)
{
	void *ret;

	if (FUNC2(!new_size)) {
		FUNC1(p);
		return ZERO_SIZE_PTR;
	}

	ret = FUNC0(p, new_size, flags);
	if (ret && p != ret)
		FUNC1(p);

	return ret;
}