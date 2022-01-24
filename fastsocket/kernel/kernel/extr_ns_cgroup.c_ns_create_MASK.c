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
struct cgroup_subsys_state {int dummy; } ;
struct ns_cgroup {struct cgroup_subsys_state css; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPERM ; 
 struct cgroup_subsys_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct ns_cgroup* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cgroup_subsys_state *FUNC4(struct cgroup_subsys *ss,
						struct cgroup *cgroup)
{
	struct ns_cgroup *ns_cgroup;

	if (!FUNC1(CAP_SYS_ADMIN))
		return FUNC0(-EPERM);
	if (!FUNC2(cgroup, current))
		return FUNC0(-EPERM);

	ns_cgroup = FUNC3(sizeof(*ns_cgroup), GFP_KERNEL);
	if (!ns_cgroup)
		return FUNC0(-ENOMEM);
	return &ns_cgroup->css;
}