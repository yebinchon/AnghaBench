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
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 

void FUNC2(int pool, int size, int elements)
{
	if (USE_SKBUFFS_IN_HW)
		FUNC1(pool, size, elements);
	else
		FUNC0(pool, size, elements);
}