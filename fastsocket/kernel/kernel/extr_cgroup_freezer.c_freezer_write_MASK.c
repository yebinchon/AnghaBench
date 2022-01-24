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
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
typedef  enum freezer_state { ____Placeholder_freezer_state } freezer_state ;

/* Variables and functions */
 size_t CGROUP_FROZEN ; 
 size_t CGROUP_THAWED ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct cgroup*,int) ; 
 int /*<<< orphan*/ * freezer_state_strs ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cgroup *cgroup,
			 struct cftype *cft,
			 const char *buffer)
{
	int retval;
	enum freezer_state goal_state;

	if (FUNC3(buffer, freezer_state_strs[CGROUP_THAWED]) == 0)
		goal_state = CGROUP_THAWED;
	else if (FUNC3(buffer, freezer_state_strs[CGROUP_FROZEN]) == 0)
		goal_state = CGROUP_FROZEN;
	else
		return -EINVAL;

	if (!FUNC0(cgroup))
		return -ENODEV;
	retval = FUNC2(cgroup, goal_state);
	FUNC1();
	return retval;
}