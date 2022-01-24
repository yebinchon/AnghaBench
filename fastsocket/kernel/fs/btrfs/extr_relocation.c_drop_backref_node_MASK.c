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
struct backref_node {int /*<<< orphan*/  rb_node; int /*<<< orphan*/  lower; int /*<<< orphan*/  list; int /*<<< orphan*/  upper; } ;
struct backref_cache {int /*<<< orphan*/  rb_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct backref_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct backref_cache*,struct backref_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct backref_cache *tree,
			      struct backref_node *node)
{
	FUNC0(!FUNC5(&node->upper));

	FUNC2(node);
	FUNC4(&node->list);
	FUNC4(&node->lower);
	if (!FUNC1(&node->rb_node))
		FUNC6(&node->rb_node, &tree->rb_root);
	FUNC3(tree, node);
}