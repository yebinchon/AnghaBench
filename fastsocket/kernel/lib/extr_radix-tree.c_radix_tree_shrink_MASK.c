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
struct radix_tree_root {int height; struct radix_tree_node* rnode; } ;
struct radix_tree_node {int count; void** slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long RADIX_TREE_INDIRECT_PTR ; 
 struct radix_tree_node* FUNC1 (struct radix_tree_node*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct radix_tree_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct radix_tree_node*) ; 

__attribute__((used)) static inline void FUNC5(struct radix_tree_root *root)
{
	/* try to shrink tree height */
	while (root->height > 0) {
		struct radix_tree_node *to_free = root->rnode;
		void *newptr;

		FUNC0(!FUNC3(to_free));
		to_free = FUNC1(to_free);

		/*
		 * The candidate node has more than one child, or its child
		 * is not at the leftmost slot, we cannot shrink.
		 */
		if (to_free->count != 1)
			break;
		if (!to_free->slots[0])
			break;

		/*
		 * We don't need rcu_assign_pointer(), since we are simply
		 * moving the node from one part of the tree to another: if it
		 * was safe to dereference the old pointer to it
		 * (to_free->slots[0]), it will be safe to dereference the new
		 * one (root->rnode) as far as dependent read barriers go.
		 */
		newptr = to_free->slots[0];
		if (root->height > 1)
			newptr = FUNC2(newptr);
		root->rnode = newptr;
		root->height--;

		/*
		 * We have a dilemma here. The node's slot[0] must not be
		 * NULLed in case there are concurrent lookups expecting to
		 * find the item. However if this was a bottom-level node,
		 * then it may be subject to the slot pointer being visible
		 * to callers dereferencing it. If item corresponding to
		 * slot[0] is subsequently deleted, these callers would expect
		 * their slot to become empty sooner or later.
		 *
		 * For example, lockless pagecache will look up a slot, deref
		 * the page pointer, and if the page is 0 refcount it means it
		 * was concurrently deleted from pagecache so try the deref
		 * again. Fortunately there is already a requirement for logic
		 * to retry the entire slot lookup -- the indirect pointer
		 * problem (replacing direct root node with an indirect pointer
		 * also results in a stale slot). So tag the slot as indirect
		 * to force callers to retry.
		 */
		if (root->height == 0)
			*((unsigned long *)&to_free->slots[0]) |=
						RADIX_TREE_INDIRECT_PTR;

		FUNC4(to_free);
	}
}