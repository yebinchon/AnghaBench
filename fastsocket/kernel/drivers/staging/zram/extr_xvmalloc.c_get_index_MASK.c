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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FL_DELTA ; 
 scalar_t__ FL_DELTA_SHIFT ; 
 scalar_t__ XV_MIN_ALLOC_SIZE ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(u32 size)
{
	if (FUNC1(size < XV_MIN_ALLOC_SIZE))
		size = XV_MIN_ALLOC_SIZE;
	size = FUNC0(size, FL_DELTA);
	return (size - XV_MIN_ALLOC_SIZE) >> FL_DELTA_SHIFT;
}