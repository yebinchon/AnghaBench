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
 int* local_port_range ; 
 int /*<<< orphan*/  local_port_range_lock ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 

void FUNC2(int *min, int *max)
{
	unsigned seq;
	do {
		seq = FUNC0(&local_port_range_lock);
		if (min)
			*min = local_port_range[0];
		if (max)
			*max = local_port_range[1];
	} while (FUNC1(&local_port_range_lock, seq));
}