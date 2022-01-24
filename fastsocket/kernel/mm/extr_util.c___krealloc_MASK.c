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
 void* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,size_t) ; 
 scalar_t__ FUNC3 (int) ; 

void *FUNC4(const void *p, size_t new_size, gfp_t flags)
{
	void *ret;
	size_t ks = 0;

	if (FUNC3(!new_size))
		return ZERO_SIZE_PTR;

	if (p)
		ks = FUNC1(p);

	if (ks >= new_size)
		return (void *)p;

	ret = FUNC0(new_size, flags);
	if (ret && p)
		FUNC2(ret, p, ks);

	return ret;
}