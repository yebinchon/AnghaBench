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
 scalar_t__ USE_SKBUFFS_IN_HW ; 
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int,int,int) ; 

int FUNC2(int pool, int size, int elements)
{
	int freed;
	if (USE_SKBUFFS_IN_HW)
		freed = FUNC1(pool, size, elements);
	else
		freed = FUNC0(pool, size, elements);
	return freed;
}