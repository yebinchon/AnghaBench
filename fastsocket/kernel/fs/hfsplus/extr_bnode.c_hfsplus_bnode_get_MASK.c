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
struct hfs_bnode {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  this; TYPE_1__* tree; } ;
struct TYPE_2__ {int /*<<< orphan*/  cnid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_BNODE_REFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct hfs_bnode *node)
{
	if (node) {
		FUNC0(&node->refcnt);
		FUNC2(DBG_BNODE_REFS, "get_node(%d:%d): %d\n",
		       node->tree->cnid, node->this, FUNC1(&node->refcnt));
	}
}