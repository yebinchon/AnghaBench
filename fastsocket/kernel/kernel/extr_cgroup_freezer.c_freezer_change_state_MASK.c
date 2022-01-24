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
struct freezer {int state; int /*<<< orphan*/  lock; } ;
struct cgroup {int dummy; } ;
typedef  enum freezer_state { ____Placeholder_freezer_state } freezer_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  CGROUP_FROZEN 129 
#define  CGROUP_THAWED 128 
 struct freezer* FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct cgroup*,struct freezer*) ; 
 int /*<<< orphan*/  FUNC5 (struct cgroup*,struct freezer*) ; 
 int /*<<< orphan*/  FUNC6 (struct cgroup*,struct freezer*) ; 

__attribute__((used)) static int FUNC7(struct cgroup *cgroup,
				enum freezer_state goal_state)
{
	struct freezer *freezer;
	int retval = 0;

	freezer = FUNC1(cgroup);

	FUNC2(&freezer->lock);

	FUNC6(cgroup, freezer);
	if (goal_state == freezer->state)
		goto out;

	switch (goal_state) {
	case CGROUP_THAWED:
		FUNC5(cgroup, freezer);
		break;
	case CGROUP_FROZEN:
		retval = FUNC4(cgroup, freezer);
		break;
	default:
		FUNC0();
	}
out:
	FUNC3(&freezer->lock);

	return retval;
}