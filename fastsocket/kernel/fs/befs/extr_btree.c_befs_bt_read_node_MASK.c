#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/  befs_off_t ;
typedef  int /*<<< orphan*/  befs_data_stream ;
struct TYPE_9__ {int /*<<< orphan*/  all_key_length; int /*<<< orphan*/  all_key_count; int /*<<< orphan*/  overflow; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  TYPE_2__ befs_btree_nodehead ;
struct TYPE_8__ {void* all_key_length; void* all_key_count; void* overflow; void* right; void* left; } ;
struct TYPE_10__ {TYPE_2__* od_node; TYPE_1__ head; TYPE_4__* bh; } ;
typedef  TYPE_3__ befs_btree_node ;
struct TYPE_11__ {scalar_t__ b_data; } ;

/* Variables and functions */
 int BEFS_ERR ; 
 int BEFS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 void* FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct super_block *sb, befs_data_stream * ds,
		  befs_btree_node * node, befs_off_t node_off)
{
	uint off = 0;

	FUNC0(sb, "---> befs_bt_read_node()");

	if (node->bh)
		FUNC4(node->bh);

	node->bh = FUNC3(sb, ds, node_off, &off);
	if (!node->bh) {
		FUNC2(sb, "befs_bt_read_node() failed to read "
			   "node at %Lu", node_off);
		FUNC0(sb, "<--- befs_bt_read_node() ERROR");

		return BEFS_ERR;
	}
	node->od_node =
	    (befs_btree_nodehead *) ((void *) node->bh->b_data + off);

	FUNC1(sb, node->od_node);

	node->head.left = FUNC6(sb, node->od_node->left);
	node->head.right = FUNC6(sb, node->od_node->right);
	node->head.overflow = FUNC6(sb, node->od_node->overflow);
	node->head.all_key_count =
	    FUNC5(sb, node->od_node->all_key_count);
	node->head.all_key_length =
	    FUNC5(sb, node->od_node->all_key_length);

	FUNC0(sb, "<--- befs_btree_read_node()");
	return BEFS_OK;
}