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
struct cgroup_subsys {int dummy; } ;
struct cgroup {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cft_memory_pressure_enabled ; 
 int FUNC1 (struct cgroup*,struct cgroup_subsys*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cgroup*,struct cgroup_subsys*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  files ; 

__attribute__((used)) static int FUNC3(struct cgroup_subsys *ss, struct cgroup *cont)
{
	int err;

	err = FUNC2(cont, ss, files, FUNC0(files));
	if (err)
		return err;
	/* memory_pressure_enabled is in root cpuset only */
	if (!cont->parent)
		err = FUNC1(cont, ss,
				      &cft_memory_pressure_enabled);
	return err;
}