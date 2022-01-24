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
struct hfs_bnode {TYPE_1__* tree; struct hfs_bnode* next_hash; int /*<<< orphan*/  this; int /*<<< orphan*/  refcnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  node_hash_cnt; struct hfs_bnode** node_hash; int /*<<< orphan*/  cnid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DBG_BNODE_REFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct hfs_bnode *node)
{
	struct hfs_bnode **p;

	FUNC2(DBG_BNODE_REFS, "remove_node(%d:%d): %d\n",
		node->tree->cnid, node->this, FUNC1(&node->refcnt));
	for (p = &node->tree->node_hash[FUNC3(node->this)];
	     *p && *p != node; p = &(*p)->next_hash)
		;
	FUNC0(!*p);
	*p = node->next_hash;
	node->tree->node_hash_cnt--;
}