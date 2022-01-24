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
typedef  int u64 ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int PSCHED_TICKS_PER_SEC ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static u64
FUNC1(u32 d)
{
	u64 dx;

	dx = ((u64)d * PSCHED_TICKS_PER_SEC);
	dx += USEC_PER_SEC - 1;
	FUNC0(dx, USEC_PER_SEC);
	return dx;
}