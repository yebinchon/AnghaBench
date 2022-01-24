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
struct ewma {scalar_t__ internal; void* factor; void* weight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(struct ewma *avg, unsigned long factor, unsigned long weight)
{
	FUNC0(!FUNC2(weight) || !FUNC2(factor));

	avg->weight = FUNC1(weight);
	avg->factor = FUNC1(factor);
	avg->internal = 0;
}