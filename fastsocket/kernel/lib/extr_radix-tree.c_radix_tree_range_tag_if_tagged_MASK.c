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
struct radix_tree_root {unsigned int height; int /*<<< orphan*/  rnode; } ;
struct radix_tree_path {int offset; struct radix_tree_node* node; } ;
struct radix_tree_node {struct radix_tree_node** slots; } ;

/* Variables and functions */
 unsigned long RADIX_TREE_MAP_MASK ; 
 unsigned int RADIX_TREE_MAP_SHIFT ; 
 struct radix_tree_node* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct radix_tree_root*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct radix_tree_root*,unsigned int) ; 
 scalar_t__ FUNC5 (struct radix_tree_node*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radix_tree_node*,unsigned int,int) ; 

unsigned long FUNC7(struct radix_tree_root *root,
		unsigned long *first_indexp, unsigned long last_index,
		unsigned long nr_to_tag,
		unsigned int iftag, unsigned int settag)
{
	unsigned int height = root->height;
	struct radix_tree_path path[height];
	struct radix_tree_path *pathp = path;
	struct radix_tree_node *slot;
	unsigned int shift;
	unsigned long tagged = 0;
	unsigned long index = *first_indexp;

	last_index = FUNC1(last_index, FUNC2(height));
	if (index > last_index)
		return 0;
	if (!nr_to_tag)
		return 0;
	if (!FUNC3(root, iftag)) {
		*first_indexp = last_index + 1;
		return 0;
	}
	if (height == 0) {
		*first_indexp = last_index + 1;
		FUNC4(root, settag);
		return 1;
	}

	shift = (height - 1) * RADIX_TREE_MAP_SHIFT;
	slot = FUNC0(root->rnode);

	/*
	 * we fill the path from (root->height - 2) to 0, leaving the index at
	 * (root->height - 1) as a terminator. Zero the node in the terminator
	 * so that we can use this to end walk loops back up the path.
	 */
	path[height - 1].node = NULL;

	for (;;) {
		int offset;

		offset = (index >> shift) & RADIX_TREE_MAP_MASK;
		if (!slot->slots[offset])
			goto next;
		if (!FUNC5(slot, iftag, offset))
			goto next;
		if (height > 1) {
			/* Go down one level */
			height--;
			shift -= RADIX_TREE_MAP_SHIFT;
			path[height - 1].node = slot;
			path[height - 1].offset = offset;
			slot = slot->slots[offset];
			continue;
		}

		/* tag the leaf */
		tagged++;
		FUNC6(slot, settag, offset);

		/* walk back up the path tagging interior nodes */
		pathp = &path[0];
		while (pathp->node) {
			/* stop if we find a node with the tag already set */
			if (FUNC5(pathp->node, settag, pathp->offset))
				break;
			FUNC6(pathp->node, settag, pathp->offset);
			pathp++;
		}

next:
		/* Go to next item at level determined by 'shift' */
		index = ((index >> shift) + 1) << shift;
		/* Overflow can happen when last_index is ~0UL... */
		if (index > last_index || !index)
			break;
		if (tagged >= nr_to_tag)
			break;
		while (((index >> shift) & RADIX_TREE_MAP_MASK) == 0) {
			/*
			 * We've fully scanned this node. Go up. Because
			 * last_index is guaranteed to be in the tree, what
			 * we do below cannot wander astray.
			 */
			slot = path[height - 1].node;
			height++;
			shift += RADIX_TREE_MAP_SHIFT;
		}
	}
	/*
	 * We need not to tag the root tag if there is no tag which is set with
	 * settag within the range from *first_indexp to last_index.
	 */
	if (tagged > 0)
		FUNC4(root, settag);
	*first_indexp = index;

	return tagged;
}