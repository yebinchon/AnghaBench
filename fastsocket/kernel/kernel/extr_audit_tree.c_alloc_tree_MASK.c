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
struct audit_tree {int /*<<< orphan*/  pathname; int /*<<< orphan*/ * root; int /*<<< orphan*/  same_root; int /*<<< orphan*/  list; int /*<<< orphan*/  rules; int /*<<< orphan*/  chunks; scalar_t__ goner; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct audit_tree* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static struct audit_tree *FUNC5(const char *s)
{
	struct audit_tree *tree;

	tree = FUNC2(sizeof(struct audit_tree) + FUNC4(s) + 1, GFP_KERNEL);
	if (tree) {
		FUNC1(&tree->count, 1);
		tree->goner = 0;
		FUNC0(&tree->chunks);
		FUNC0(&tree->rules);
		FUNC0(&tree->list);
		FUNC0(&tree->same_root);
		tree->root = NULL;
		FUNC3(tree->pathname, s);
	}
	return tree;
}