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
struct TYPE_2__ {struct filter_arg* left; struct filter_arg* right; } ;
struct filter_arg {scalar_t__ type; TYPE_1__ op; } ;

/* Variables and functions */
 scalar_t__ FILTER_ARG_OP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct filter_arg*) ; 
 int /*<<< orphan*/  FUNC2 (struct filter_arg*) ; 

void FUNC3(struct filter_arg *parent, struct filter_arg *old_child,
		  struct filter_arg *arg)
{
	struct filter_arg *other_child;
	struct filter_arg **ptr;

	if (parent->type != FILTER_ARG_OP &&
	    arg->type != FILTER_ARG_OP)
		FUNC0("can not reparent other than OP");

	/* Get the sibling */
	if (old_child->op.right == arg) {
		ptr = &old_child->op.right;
		other_child = old_child->op.left;
	} else if (old_child->op.left == arg) {
		ptr = &old_child->op.left;
		other_child = old_child->op.right;
	} else
		FUNC0("Error in reparent op, find other child");

	/* Detach arg from old_child */
	*ptr = NULL;

	/* Check for root */
	if (parent == old_child) {
		FUNC2(other_child);
		*parent = *arg;
		/* Free arg without recussion */
		FUNC1(arg);
		return;
	}

	if (parent->op.right == old_child)
		ptr = &parent->op.right;
	else if (parent->op.left == old_child)
		ptr = &parent->op.left;
	else
		FUNC0("Error in reparent op");
	*ptr = arg;

	FUNC2(old_child);
}