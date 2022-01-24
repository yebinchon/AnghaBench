#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dlm_space {int /*<<< orphan*/  members_lock; int /*<<< orphan*/  members_count; } ;
struct dlm_node {int /*<<< orphan*/  list; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ci_parent; } ;
struct config_group {TYPE_1__ cg_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 struct dlm_node* FUNC1 (struct config_item*) ; 
 struct dlm_space* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct config_group *g, struct config_item *i)
{
	struct dlm_space *sp = FUNC2(g->cg_item.ci_parent);
	struct dlm_node *nd = FUNC1(i);

	FUNC4(&sp->members_lock);
	FUNC3(&nd->list);
	sp->members_count--;
	FUNC5(&sp->members_lock);

	FUNC0(i);
}