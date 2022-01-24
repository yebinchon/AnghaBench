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
typedef  int /*<<< orphan*/  xfs_km_flags_t ;

/* Variables and functions */
 void* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,size_t) ; 

void *
FUNC3(const void *ptr, size_t newsize, size_t oldsize,
	     xfs_km_flags_t flags)
{
	void	*new;

	new = FUNC0(newsize, flags);
	if (ptr) {
		if (new)
			FUNC2(new, ptr,
				((oldsize < newsize) ? oldsize : newsize));
		FUNC1(ptr);
	}
	return new;
}