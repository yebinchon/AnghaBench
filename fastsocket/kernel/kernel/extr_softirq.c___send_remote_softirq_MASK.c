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
 int /*<<< orphan*/  FUNC0 (struct call_single_data*,int) ; 
 scalar_t__ FUNC1 (struct call_single_data*,int,int) ; 

void FUNC2(struct call_single_data *cp, int cpu, int this_cpu, int softirq)
{
	if (cpu == this_cpu || FUNC1(cp, cpu, softirq))
		FUNC0(cp, softirq);
}