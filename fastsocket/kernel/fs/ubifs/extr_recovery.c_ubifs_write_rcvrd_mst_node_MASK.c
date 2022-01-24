#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ubifs_info {TYPE_2__* rcvrd_mst_node; TYPE_1__* mst_node; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  UBIFS_MST_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct ubifs_info*,TYPE_2__*) ; 

int FUNC3(struct ubifs_info *c)
{
	int err;

	if (!c->rcvrd_mst_node)
		return 0;
	c->rcvrd_mst_node->flags |= FUNC0(UBIFS_MST_DIRTY);
	c->mst_node->flags |= FUNC0(UBIFS_MST_DIRTY);
	err = FUNC2(c, c->rcvrd_mst_node);
	if (err)
		return err;
	FUNC1(c->rcvrd_mst_node);
	c->rcvrd_mst_node = NULL;
	return 0;
}