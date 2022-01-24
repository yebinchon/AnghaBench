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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

int FUNC2(unsigned int index, unsigned int nr,
			   unsigned long shift,
			   unsigned long boundary_size)
{
	FUNC0(!FUNC1(boundary_size));

	shift = (shift + index) & (boundary_size - 1);
	return shift + nr > boundary_size;
}