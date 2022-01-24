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
struct res_counter {unsigned long usage; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

void FUNC1(struct res_counter *counter, unsigned long val)
{
	if (FUNC0(counter->usage < val))
		val = counter->usage;

	counter->usage -= val;
}