#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
typedef  int befs_off_t ;
typedef  int /*<<< orphan*/  befs_data_stream ;
struct TYPE_11__ {int root_node_ptr; } ;
typedef  TYPE_2__ befs_btree_super ;
struct TYPE_10__ {int overflow; } ;
struct TYPE_12__ {int /*<<< orphan*/ * bh; TYPE_1__ head; } ;
typedef  TYPE_3__ befs_btree_node ;

/* Variables and functions */
 int BEFS_BT_MATCH ; 
 int BEFS_BT_NOT_FOUND ; 
 int BEFS_ERR ; 
 scalar_t__ BEFS_OK ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 scalar_t__ FUNC1 (struct super_block*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,...) ; 
 int FUNC4 (struct super_block*,TYPE_3__*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (int,int /*<<< orphan*/ ) ; 

int
FUNC9(struct super_block *sb, befs_data_stream * ds,
		const char *key, befs_off_t * value)
{
	befs_btree_node *this_node = NULL;
	befs_btree_super bt_super;
	befs_off_t node_off;
	int res;

	FUNC2(sb, "---> befs_btree_find() Key: %s", key);

	if (FUNC1(sb, ds, &bt_super) != BEFS_OK) {
		FUNC3(sb,
			   "befs_btree_find() failed to read index superblock");
		goto error;
	}

	this_node = FUNC8(sizeof (befs_btree_node),
						GFP_NOFS);
	if (!this_node) {
		FUNC3(sb, "befs_btree_find() failed to allocate %u "
			   "bytes of memory", sizeof (befs_btree_node));
		goto error;
	}

	this_node->bh = NULL;

	/* read in root node */
	node_off = bt_super.root_node_ptr;
	if (FUNC0(sb, ds, this_node, node_off) != BEFS_OK) {
		FUNC3(sb, "befs_btree_find() failed to read "
			   "node at %Lu", node_off);
		goto error_alloc;
	}

	while (!FUNC5(this_node)) {
		res = FUNC4(sb, this_node, key, &node_off);
		if (res == BEFS_BT_NOT_FOUND)
			node_off = this_node->head.overflow;
		/* if no match, go to overflow node */
		if (FUNC0(sb, ds, this_node, node_off) != BEFS_OK) {
			FUNC3(sb, "befs_btree_find() failed to read "
				   "node at %Lu", node_off);
			goto error_alloc;
		}
	}

	/* at the correct leaf node now */

	res = FUNC4(sb, this_node, key, value);

	FUNC6(this_node->bh);
	FUNC7(this_node);

	if (res != BEFS_BT_MATCH) {
		FUNC2(sb, "<--- befs_btree_find() Key %s not found", key);
		*value = 0;
		return BEFS_BT_NOT_FOUND;
	}
	FUNC2(sb, "<--- befs_btree_find() Found key %s, value %Lu",
		   key, *value);
	return BEFS_OK;

      error_alloc:
	FUNC7(this_node);
      error:
	*value = 0;
	FUNC2(sb, "<--- befs_btree_find() ERROR");
	return BEFS_ERR;
}