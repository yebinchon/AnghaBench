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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

void *
FUNC2(size_t size, xfs_km_flags_t flags)
{
	void	*ptr;

	ptr = FUNC0(size, flags);
	if (ptr)
		FUNC1((char *)ptr, 0, (int)size);
	return ptr;
}