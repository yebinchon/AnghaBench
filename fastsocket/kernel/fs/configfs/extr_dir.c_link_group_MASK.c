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
struct configfs_subsystem {int dummy; } ;
struct config_group {struct config_group** default_groups; struct configfs_subsystem* cg_subsys; int /*<<< orphan*/  cg_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct configfs_subsystem* FUNC3 (struct config_group*) ; 

__attribute__((used)) static void FUNC4(struct config_group *parent_group, struct config_group *group)
{
	int i;
	struct config_group *new_group;
	struct configfs_subsystem *subsys = NULL; /* gcc is a turd */

	FUNC2(&parent_group->cg_item, &group->cg_item);

	if (parent_group->cg_subsys)
		subsys = parent_group->cg_subsys;
	else if (FUNC1(&parent_group->cg_item))
		subsys = FUNC3(group);
	else
		FUNC0();
	group->cg_subsys = subsys;

	if (group->default_groups) {
		for (i = 0; group->default_groups[i]; i++) {
			new_group = group->default_groups[i];
			FUNC4(group, new_group);
		}
	}
}