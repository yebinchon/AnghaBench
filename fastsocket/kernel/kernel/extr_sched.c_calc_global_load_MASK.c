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
 int /*<<< orphan*/  EXP_1 ; 
 int /*<<< orphan*/  EXP_15 ; 
 int /*<<< orphan*/  EXP_5 ; 
 long FIXED_1 ; 
 scalar_t__ LOAD_FREQ ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * avenrun ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  calc_load_tasks ; 
 int calc_load_update ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC3(void)
{
	unsigned long upd = calc_load_update + 10;
	long active;

	if (FUNC2(jiffies, upd))
		return;

	active = FUNC0(&calc_load_tasks);
	active = active > 0 ? active * FIXED_1 : 0;

	avenrun[0] = FUNC1(avenrun[0], EXP_1, active);
	avenrun[1] = FUNC1(avenrun[1], EXP_5, active);
	avenrun[2] = FUNC1(avenrun[2], EXP_15, active);

	calc_load_update += LOAD_FREQ;
}