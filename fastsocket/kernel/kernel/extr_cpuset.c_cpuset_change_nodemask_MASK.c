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
struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
struct cpuset {int /*<<< orphan*/  mems_allowed; } ;
struct cgroup_scanner {int /*<<< orphan*/  cg; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  nodemask_t ;

/* Variables and functions */
 struct cpuset* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 struct mm_struct* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuset*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct task_struct *p,
				   struct cgroup_scanner *scan)
{
	struct mm_struct *mm;
	struct cpuset *cs;
	int migrate;
	const nodemask_t *oldmem = scan->data;
	nodemask_t newmems;

	cs = FUNC0(scan->cg);
	FUNC4(cs, &newmems);

	FUNC1(p, &newmems);

	mm = FUNC3(p);
	if (!mm)
		return;

	migrate = FUNC5(cs);

	FUNC7(mm, &cs->mems_allowed);
	if (migrate)
		FUNC2(mm, oldmem, &cs->mems_allowed);
	FUNC6(mm);
}