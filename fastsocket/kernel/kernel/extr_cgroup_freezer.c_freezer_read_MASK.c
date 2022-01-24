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
struct seq_file {int dummy; } ;
struct freezer {int state; int /*<<< orphan*/  lock; } ;
struct cgroup {int dummy; } ;
struct cftype {int dummy; } ;
typedef  enum freezer_state { ____Placeholder_freezer_state } freezer_state ;

/* Variables and functions */
 int CGROUP_FREEZING ; 
 int ENODEV ; 
 struct freezer* FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * freezer_state_strs ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cgroup*,struct freezer*) ; 

__attribute__((used)) static int FUNC8(struct cgroup *cgroup, struct cftype *cft,
			struct seq_file *m)
{
	struct freezer *freezer;
	enum freezer_state state;

	if (!FUNC1(cgroup))
		return -ENODEV;

	freezer = FUNC0(cgroup);
	FUNC5(&freezer->lock);
	state = freezer->state;
	if (state == CGROUP_FREEZING) {
		/* We change from FREEZING to FROZEN lazily if the cgroup was
		 * only partially frozen when we exitted write. */
		FUNC7(cgroup, freezer);
		state = freezer->state;
	}
	FUNC6(&freezer->lock);
	FUNC2();

	FUNC4(m, freezer_state_strs[state]);
	FUNC3(m, '\n');
	return 0;
}