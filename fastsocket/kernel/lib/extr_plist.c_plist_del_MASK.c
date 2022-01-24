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
struct TYPE_2__ {int /*<<< orphan*/  node_list; int /*<<< orphan*/  prio_list; } ;
struct plist_node {TYPE_1__ plist; } ;
struct plist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct plist_head*) ; 
 struct plist_node* FUNC4 (TYPE_1__*) ; 

void FUNC5(struct plist_node *node, struct plist_head *head)
{
	FUNC3(head);

	if (!FUNC1(&node->plist.prio_list)) {
		struct plist_node *next = FUNC4(&node->plist);

		FUNC2(&next->plist.prio_list, &node->plist.prio_list);
		FUNC0(&node->plist.prio_list);
	}

	FUNC0(&node->plist.node_list);

	FUNC3(head);
}