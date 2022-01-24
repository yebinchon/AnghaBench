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
struct gcov_node {int dummy; } ;
struct gcov_info {int /*<<< orphan*/  filename; } ;
typedef  enum gcov_action { ____Placeholder_gcov_action } gcov_action ;

/* Variables and functions */
#define  GCOV_ADD 129 
#define  GCOV_REMOVE 128 
 int /*<<< orphan*/  FUNC0 (struct gcov_info*) ; 
 int /*<<< orphan*/  gcov_persist ; 
 struct gcov_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gcov_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  node_lock ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gcov_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct gcov_node*,struct gcov_info*) ; 

void FUNC8(enum gcov_action action, struct gcov_info *info)
{
	struct gcov_node *node;

	FUNC3(&node_lock);
	node = FUNC1(info->filename);
	switch (action) {
	case GCOV_ADD:
		/* Add new node or revive ghost. */
		if (!node) {
			FUNC0(info);
			break;
		}
		if (gcov_persist)
			FUNC7(node, info);
		else {
			FUNC5("could not add '%s' (already exists)\n",
				   info->filename);
		}
		break;
	case GCOV_REMOVE:
		/* Remove node or turn into ghost. */
		if (!node) {
			FUNC5("could not remove '%s' (not found)\n",
				   info->filename);
			break;
		}
		if (gcov_persist) {
			if (!FUNC2(node))
				break;
		}
		FUNC6(node);
		break;
	}
	FUNC4(&node_lock);
}