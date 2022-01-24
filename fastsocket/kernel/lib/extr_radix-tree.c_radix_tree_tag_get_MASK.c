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
struct radix_tree_root {int /*<<< orphan*/  rnode; } ;
struct radix_tree_node {unsigned int height; int /*<<< orphan*/ * slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long RADIX_TREE_MAP_MASK ; 
 unsigned int RADIX_TREE_MAP_SHIFT ; 
 struct radix_tree_node* FUNC1 (struct radix_tree_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct radix_tree_node*) ; 
 unsigned long FUNC3 (unsigned int) ; 
 struct radix_tree_node* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radix_tree_root*,unsigned int) ; 
 int FUNC6 (struct radix_tree_node*,unsigned int,int) ; 

int FUNC7(struct radix_tree_root *root,
			unsigned long index, unsigned int tag)
{
	unsigned int height, shift;
	struct radix_tree_node *node;
	int saw_unset_tag = 0;

	/* check the root's tag bit */
	if (!FUNC5(root, tag))
		return 0;

	node = FUNC4(root->rnode);
	if (node == NULL)
		return 0;

	if (!FUNC2(node))
		return (index == 0);
	node = FUNC1(node);

	height = node->height;
	if (index > FUNC3(height))
		return 0;

	shift = (height - 1) * RADIX_TREE_MAP_SHIFT;

	for ( ; ; ) {
		int offset;

		if (node == NULL)
			return 0;

		offset = (index >> shift) & RADIX_TREE_MAP_MASK;

		/*
		 * This is just a debug check.  Later, we can bale as soon as
		 * we see an unset tag.
		 */
		if (!FUNC6(node, tag, offset))
			saw_unset_tag = 1;
		if (height == 1) {
			int ret = FUNC6(node, tag, offset);

			FUNC0(ret && saw_unset_tag);
			return !!ret;
		}
		node = FUNC4(node->slots[offset]);
		shift -= RADIX_TREE_MAP_SHIFT;
		height--;
	}
}