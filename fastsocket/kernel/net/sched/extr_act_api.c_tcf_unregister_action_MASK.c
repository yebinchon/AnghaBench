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
struct tc_action_ops {struct tc_action_ops* next; } ;

/* Variables and functions */
 int ENOENT ; 
 struct tc_action_ops* act_base ; 
 int /*<<< orphan*/  act_mod_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct tc_action_ops *act)
{
	struct tc_action_ops *a, **ap;
	int err = -ENOENT;

	FUNC0(&act_mod_lock);
	for (ap = &act_base; (a = *ap) != NULL; ap = &a->next)
		if (a == act)
			break;
	if (a) {
		*ap = a->next;
		a->next = NULL;
		err = 0;
	}
	FUNC1(&act_mod_lock);
	return err;
}