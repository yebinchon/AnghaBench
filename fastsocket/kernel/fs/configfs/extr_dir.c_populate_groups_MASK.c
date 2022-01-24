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
struct config_group {struct config_group** default_groups; } ;

/* Variables and functions */
 int FUNC0 (struct config_group*,struct config_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_group*) ; 

__attribute__((used)) static int FUNC2(struct config_group *group)
{
	struct config_group *new_group;
	int ret = 0;
	int i;

	if (group->default_groups) {
		for (i = 0; group->default_groups[i]; i++) {
			new_group = group->default_groups[i];

			ret = FUNC0(group, new_group);
			if (ret) {
				FUNC1(group);
				break;
			}
		}
	}

	return ret;
}