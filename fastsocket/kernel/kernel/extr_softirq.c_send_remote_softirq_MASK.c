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
struct call_single_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct call_single_data*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 () ; 

void FUNC4(struct call_single_data *cp, int cpu, int softirq)
{
	unsigned long flags;
	int this_cpu;

	FUNC2(flags);
	this_cpu = FUNC3();
	FUNC0(cp, cpu, this_cpu, softirq);
	FUNC1(flags);
}