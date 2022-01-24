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
struct sp_node {struct mempolicy* policy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rb_node; } ;
struct shared_policy {int /*<<< orphan*/  lock; TYPE_1__ root; } ;
struct mempolicy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mempolicy*) ; 
 struct sp_node* FUNC1 (struct shared_policy*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct mempolicy *
FUNC4(struct shared_policy *sp, unsigned long idx)
{
	struct mempolicy *pol = NULL;
	struct sp_node *sn;

	if (!sp->root.rb_node)
		return NULL;
	FUNC2(&sp->lock);
	sn = FUNC1(sp, idx, idx+1);
	if (sn) {
		FUNC0(sn->policy);
		pol = sn->policy;
	}
	FUNC3(&sp->lock);
	return pol;
}