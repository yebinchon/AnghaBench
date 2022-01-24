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
typedef  struct rb_node {struct rb_node const* rb_left; struct rb_node const* rb_right; } const rb_node ;

/* Variables and functions */
 struct rb_node const* FUNC0 (struct rb_node const*) ; 

struct rb_node *FUNC1(const struct rb_node *node)
{
	struct rb_node *parent;

	if (FUNC0(node) == node)
		return NULL;

	/* If we have a left-hand child, go down and then right as far
	   as we can. */
	if (node->rb_left) {
		node = node->rb_left; 
		while (node->rb_right)
			node=node->rb_right;
		return (struct rb_node *)node;
	}

	/* No left-hand children. Go up till we find an ancestor which
	   is a right-hand child of its parent */
	while ((parent = FUNC0(node)) && node == parent->rb_left)
		node = parent;

	return parent;
}