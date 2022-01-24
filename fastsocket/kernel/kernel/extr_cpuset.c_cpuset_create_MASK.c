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
struct cgroup_subsys_state {int dummy; } ;
struct cpuset {int relax_domain_level; struct cgroup_subsys_state css; struct cpuset* parent; int /*<<< orphan*/  fmeter; int /*<<< orphan*/  mems_allowed; int /*<<< orphan*/  cpus_allowed; scalar_t__ flags; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int /*<<< orphan*/  parent; } ;
struct TYPE_2__ {struct cgroup_subsys_state css; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SCHED_LOAD_BALANCE ; 
 int /*<<< orphan*/  CS_SPREAD_PAGE ; 
 int /*<<< orphan*/  CS_SPREAD_SLAB ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct cgroup_subsys_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cpuset* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct cpuset*) ; 
 scalar_t__ FUNC6 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuset*) ; 
 struct cpuset* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  number_of_cpusets ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_1__ top_cpuset ; 

__attribute__((used)) static struct cgroup_subsys_state *FUNC11(
	struct cgroup_subsys *ss,
	struct cgroup *cont)
{
	struct cpuset *cs;
	struct cpuset *parent;

	if (!cont->parent) {
		return &top_cpuset.css;
	}
	parent = FUNC2(cont->parent);
	cs = FUNC8(sizeof(*cs), GFP_KERNEL);
	if (!cs)
		return FUNC0(-ENOMEM);
	if (!FUNC1(&cs->cpus_allowed, GFP_KERNEL)) {
		FUNC7(cs);
		return FUNC0(-ENOMEM);
	}

	cs->flags = 0;
	if (FUNC5(parent))
		FUNC10(CS_SPREAD_PAGE, &cs->flags);
	if (FUNC6(parent))
		FUNC10(CS_SPREAD_SLAB, &cs->flags);
	FUNC10(CS_SCHED_LOAD_BALANCE, &cs->flags);
	FUNC3(cs->cpus_allowed);
	FUNC9(cs->mems_allowed);
	FUNC4(&cs->fmeter);
	cs->relax_domain_level = -1;

	cs->parent = parent;
	number_of_cpusets++;
	return &cs->css ;
}