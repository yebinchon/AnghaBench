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
typedef  int /*<<< orphan*/  kmem_zone_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *
FUNC3(kmem_zone_t *zone, xfs_km_flags_t flags)
{
	void	*ptr;

	ptr = FUNC1(zone, flags);
	if (ptr)
		FUNC2((char *)ptr, 0, FUNC0(zone));
	return ptr;
}