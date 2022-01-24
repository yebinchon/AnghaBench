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
struct radix_tree_root {int height; int /*<<< orphan*/ * rnode; } ;
struct radix_tree_node {unsigned int height; int count; int /*<<< orphan*/ * slots; } ;

/* Variables and functions */
 int ENOMEM ; 
 int RADIX_TREE_MAX_TAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct radix_tree_node* FUNC1 (struct radix_tree_node*) ; 
 unsigned long FUNC2 (unsigned int) ; 
 struct radix_tree_node* FUNC3 (struct radix_tree_root*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct radix_tree_node*) ; 
 scalar_t__ FUNC5 (struct radix_tree_root*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radix_tree_node*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct radix_tree_root *root, unsigned long index)
{
	struct radix_tree_node *node;
	unsigned int height;
	int tag;

	/* Figure out what the height should be.  */
	height = root->height + 1;
	while (index > FUNC2(height))
		height++;

	if (root->rnode == NULL) {
		root->height = height;
		goto out;
	}

	do {
		unsigned int newheight;
		if (!(node = FUNC3(root)))
			return -ENOMEM;

		/* Increase the height.  */
		node->slots[0] = FUNC0(root->rnode);

		/* Propagate the aggregated tag info into the new root */
		for (tag = 0; tag < RADIX_TREE_MAX_TAGS; tag++) {
			if (FUNC5(root, tag))
				FUNC6(node, tag, 0);
		}

		newheight = root->height+1;
		node->height = newheight;
		node->count = 1;
		node = FUNC1(node);
		FUNC4(root->rnode, node);
		root->height = newheight;
	} while (height > root->height);
out:
	return 0;
}