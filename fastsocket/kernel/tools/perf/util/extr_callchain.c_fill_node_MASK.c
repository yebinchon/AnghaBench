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
struct callchain_node {int /*<<< orphan*/  val; scalar_t__ val_nr; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; int /*<<< orphan*/  sym; } ;
struct callchain_list {int /*<<< orphan*/  list; TYPE_1__ ms; int /*<<< orphan*/  ip; } ;
struct callchain_cursor_node {int /*<<< orphan*/  map; int /*<<< orphan*/  sym; int /*<<< orphan*/  ip; } ;
struct callchain_cursor {scalar_t__ pos; scalar_t__ nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct callchain_cursor*) ; 
 struct callchain_cursor_node* FUNC1 (struct callchain_cursor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct callchain_list* FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct callchain_node *node, struct callchain_cursor *cursor)
{
	struct callchain_cursor_node *cursor_node;

	node->val_nr = cursor->nr - cursor->pos;
	if (!node->val_nr)
		FUNC4("Warning: empty node in callchain tree\n");

	cursor_node = FUNC1(cursor);

	while (cursor_node) {
		struct callchain_list *call;

		call = FUNC5(sizeof(*call));
		if (!call) {
			FUNC3("not enough memory for the code path tree");
			return;
		}
		call->ip = cursor_node->ip;
		call->ms.sym = cursor_node->sym;
		call->ms.map = cursor_node->map;
		FUNC2(&call->list, &node->val);

		FUNC0(cursor);
		cursor_node = FUNC1(cursor);
	}
}