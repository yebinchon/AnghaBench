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
struct ptr_heap {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cgroup; } ;
struct cpuset {TYPE_1__ css; } ;
struct cgroup_scanner {struct ptr_heap* heap; int /*<<< orphan*/  process_task; int /*<<< orphan*/  test_task; int /*<<< orphan*/  cg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup_scanner*) ; 
 int /*<<< orphan*/  cpuset_change_cpumask ; 
 int /*<<< orphan*/  cpuset_test_cpumask ; 

__attribute__((used)) static void FUNC1(struct cpuset *cs, struct ptr_heap *heap)
{
	struct cgroup_scanner scan;

	scan.cg = cs->css.cgroup;
	scan.test_task = cpuset_test_cpumask;
	scan.process_task = cpuset_change_cpumask;
	scan.heap = heap;
	FUNC0(&scan);
}