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
struct cpuset {struct cpumask* cpus_allowed; struct cpuset* parent; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask*,struct cpumask*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpumask*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct cpuset *cs,
				  struct cpumask *pmask)
{
	while (cs && !FUNC3(cs->cpus_allowed, cpu_online_mask))
		cs = cs->parent;
	if (cs)
		FUNC1(pmask, cs->cpus_allowed, cpu_online_mask);
	else
		FUNC2(pmask, cpu_online_mask);
	FUNC0(!FUNC3(pmask, cpu_online_mask));
}