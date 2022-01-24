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
struct tc_action_ops {int /*<<< orphan*/  owner; int /*<<< orphan*/  kind; struct tc_action_ops* next; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 struct tc_action_ops* act_base ; 
 int /*<<< orphan*/  act_mod_lock ; 
 scalar_t__ FUNC0 (struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tc_action_ops *FUNC4(struct nlattr *kind)
{
	struct tc_action_ops *a = NULL;

	if (kind) {
		FUNC1(&act_mod_lock);
		for (a = act_base; a; a = a->next) {
			if (FUNC0(kind, a->kind) == 0) {
				if (!FUNC3(a->owner)) {
					FUNC2(&act_mod_lock);
					return NULL;
				}
				break;
			}
		}
		FUNC2(&act_mod_lock);
	}
	return a;
}