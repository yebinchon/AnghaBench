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
struct dst_trans {struct dst_node* n; } ;
struct dst_node {int /*<<< orphan*/  trans_lock; } ;

/* Variables and functions */
 int FUNC0 (struct dst_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dst_trans *t)
{
	int ret;
	struct dst_node *n = t->n;

	FUNC1(&n->trans_lock);
	ret = FUNC0(t);
	FUNC2(&n->trans_lock);

	return ret;
}