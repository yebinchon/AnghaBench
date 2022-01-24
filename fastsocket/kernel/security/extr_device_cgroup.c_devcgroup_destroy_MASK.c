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
struct dev_cgroup {int dummy; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 struct dev_cgroup* FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_cgroup*) ; 

__attribute__((used)) static void FUNC3(struct cgroup_subsys *ss,
			struct cgroup *cgroup)
{
	struct dev_cgroup *dev_cgroup;

	dev_cgroup = FUNC0(cgroup);
	FUNC1(dev_cgroup);
	FUNC2(dev_cgroup);
}