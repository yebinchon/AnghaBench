#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ nxtlist; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rcu_bh_data ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  rcu_sched_data ; 

int FUNC2(int cpu)
{
	/* RCU callbacks either ready or pending? */
	return FUNC0(rcu_sched_data, cpu).nxtlist ||
	       FUNC0(rcu_bh_data, cpu).nxtlist ||
	       FUNC1(cpu);
}