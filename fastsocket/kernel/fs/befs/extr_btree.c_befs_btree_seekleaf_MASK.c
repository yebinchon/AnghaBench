#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  fs64 ;
typedef  int /*<<< orphan*/  befs_off_t ;
typedef  int /*<<< orphan*/  befs_data_stream ;
typedef  int /*<<< orphan*/  befs_btree_super ;
struct TYPE_7__ {scalar_t__ all_key_count; int /*<<< orphan*/  overflow; } ;
struct TYPE_8__ {TYPE_1__ head; } ;
typedef  TYPE_2__ befs_btree_node ;

/* Variables and functions */
 int BEFS_BT_EMPTY ; 
 int BEFS_ERR ; 
 scalar_t__ BEFS_OK ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct super_block *sb, befs_data_stream * ds,
		    befs_btree_super * bt_super, befs_btree_node * this_node,
		    befs_off_t * node_off)
{

	FUNC2(sb, "---> befs_btree_seekleaf()");

	if (FUNC0(sb, ds, this_node, *node_off) != BEFS_OK) {
		FUNC3(sb, "befs_btree_seekleaf() failed to read "
			   "node at %Lu", *node_off);
		goto error;
	}
	FUNC2(sb, "Seekleaf to root node %Lu", *node_off);

	if (this_node->head.all_key_count == 0 && FUNC4(this_node)) {
		FUNC2(sb, "<--- befs_btree_seekleaf() Tree is EMPTY");
		return BEFS_BT_EMPTY;
	}

	while (!FUNC4(this_node)) {

		if (this_node->head.all_key_count == 0) {
			FUNC2(sb, "befs_btree_seekleaf() encountered "
				   "an empty interior node: %Lu. Using Overflow "
				   "node: %Lu", *node_off,
				   this_node->head.overflow);
			*node_off = this_node->head.overflow;
		} else {
			fs64 *valarray = FUNC1(this_node);
			*node_off = FUNC5(sb, valarray[0]);
		}
		if (FUNC0(sb, ds, this_node, *node_off) != BEFS_OK) {
			FUNC3(sb, "befs_btree_seekleaf() failed to read "
				   "node at %Lu", *node_off);
			goto error;
		}

		FUNC2(sb, "Seekleaf to child node %Lu", *node_off);
	}
	FUNC2(sb, "Node %Lu is a leaf node", *node_off);

	return BEFS_OK;

      error:
	FUNC2(sb, "<--- befs_btree_seekleaf() ERROR");
	return BEFS_ERR;
}