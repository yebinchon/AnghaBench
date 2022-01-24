#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__** default_groups; } ;
struct dlm_space {TYPE_2__ group; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;
struct TYPE_3__ {struct config_item cg_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 struct dlm_space* FUNC1 (struct config_item*) ; 

__attribute__((used)) static void FUNC2(struct config_group *g, struct config_item *i)
{
	struct dlm_space *sp = FUNC1(i);
	struct config_item *tmp;
	int j;

	/* assert list_empty(&sp->members) */

	for (j = 0; sp->group.default_groups[j]; j++) {
		tmp = &sp->group.default_groups[j]->cg_item;
		sp->group.default_groups[j] = NULL;
		FUNC0(tmp);
	}

	FUNC0(i);
}