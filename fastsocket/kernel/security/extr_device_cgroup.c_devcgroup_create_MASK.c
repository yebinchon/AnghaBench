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
struct dev_cgroup {struct cgroup_subsys_state css; int /*<<< orphan*/  behavior; int /*<<< orphan*/  exceptions; } ;
struct cgroup_subsys {int dummy; } ;
struct cgroup {struct cgroup* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCG_DEFAULT_ALLOW ; 
 int ENOMEM ; 
 struct cgroup_subsys_state* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dev_cgroup* FUNC2 (struct cgroup*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devcgroup_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct dev_cgroup*) ; 
 struct dev_cgroup* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cgroup_subsys_state *FUNC8(struct cgroup_subsys *ss,
						struct cgroup *cgroup)
{
	struct dev_cgroup *dev_cgroup, *parent_dev_cgroup;
	struct cgroup *parent_cgroup;
	int ret;

	dev_cgroup = FUNC5(sizeof(*dev_cgroup), GFP_KERNEL);
	if (!dev_cgroup)
		return FUNC0(-ENOMEM);
	FUNC1(&dev_cgroup->exceptions);
	parent_cgroup = cgroup->parent;

	if (parent_cgroup == NULL)
		dev_cgroup->behavior = DEVCG_DEFAULT_ALLOW;
	else {
		parent_dev_cgroup = FUNC2(parent_cgroup);
		FUNC6(&devcgroup_mutex);
		ret = FUNC3(&dev_cgroup->exceptions,
					  &parent_dev_cgroup->exceptions);
		dev_cgroup->behavior = parent_dev_cgroup->behavior;
		FUNC7(&devcgroup_mutex);
		if (ret) {
			FUNC4(dev_cgroup);
			return FUNC0(ret);
		}
	}

	return &dev_cgroup->css;
}