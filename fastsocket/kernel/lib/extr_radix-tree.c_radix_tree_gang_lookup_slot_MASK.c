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
struct radix_tree_node {int /*<<< orphan*/  height; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct radix_tree_node*,void***,unsigned long*,unsigned long,unsigned int,unsigned long*) ; 
 struct radix_tree_node* FUNC1 (struct radix_tree_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct radix_tree_node*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 struct radix_tree_node* FUNC4 (int /*<<< orphan*/ ) ; 

unsigned int
FUNC5(struct radix_tree_root *root,
			void ***results, unsigned long *indices,
			unsigned long first_index, unsigned int max_items)
{
	unsigned long max_index;
	struct radix_tree_node *node;
	unsigned long cur_index = first_index;
	unsigned int ret;

	node = FUNC4(root->rnode);
	if (!node)
		return 0;

	if (!FUNC2(node)) {
		if (first_index > 0)
			return 0;
		results[0] = (void **)&root->rnode;
		if (indices)
			indices[0] = 0;
		return 1;
	}
	node = FUNC1(node);

	max_index = FUNC3(node->height);

	ret = 0;
	while (ret < max_items) {
		unsigned int slots_found;
		unsigned long next_index;	/* Index of next search */

		if (cur_index > max_index)
			break;
		slots_found = FUNC0(node, results + ret,
				indices ? indices + ret : NULL,
				cur_index, max_items - ret, &next_index);
		ret += slots_found;
		if (next_index == 0)
			break;
		cur_index = next_index;
	}

	return ret;
}