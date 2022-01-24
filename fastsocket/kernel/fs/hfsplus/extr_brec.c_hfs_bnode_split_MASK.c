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
struct hfs_find_data {int record; int keyoffset; int entryoffset; struct hfs_bnode* bnode; struct hfs_btree* tree; } ;
struct hfs_btree {int node_size; scalar_t__ leaf_tail; int /*<<< orphan*/  inode; } ;
struct hfs_bnode_desc {void* prev; void* num_recs; void* next; scalar_t__ reserved; int /*<<< orphan*/  height; int /*<<< orphan*/  type; } ;
struct hfs_bnode {scalar_t__ this; scalar_t__ next; scalar_t__ prev; int num_recs; int /*<<< orphan*/  height; int /*<<< orphan*/  type; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  node_desc ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_BNODE_MOD ; 
 int /*<<< orphan*/  ENOSPC ; 
 struct hfs_bnode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hfs_bnode*) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 struct hfs_bnode* FUNC5 (struct hfs_btree*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfs_bnode*,int,struct hfs_bnode*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hfs_bnode*) ; 
 struct hfs_bnode* FUNC8 (struct hfs_btree*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC11 (struct hfs_bnode*,struct hfs_bnode_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct hfs_bnode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct hfs_bnode*,struct hfs_bnode_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct hfs_bnode*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hfs_bnode *FUNC16(struct hfs_find_data *fd)
{
	struct hfs_btree *tree;
	struct hfs_bnode *node, *new_node;
	struct hfs_bnode_desc node_desc;
	int num_recs, new_rec_off, new_off, old_rec_off;
	int data_start, data_end, size;

	tree = fd->tree;
	node = fd->bnode;
	new_node = FUNC5(tree);
	if (FUNC1(new_node))
		return new_node;
	FUNC9(node);
	FUNC4(DBG_BNODE_MOD, "split_nodes: %d - %d - %d\n",
		node->this, new_node->this, node->next);
	new_node->next = node->next;
	new_node->prev = node->this;
	new_node->parent = node->parent;
	new_node->type = node->type;
	new_node->height = node->height;

	size = tree->node_size / 2 - node->num_recs * 2 - 14;
	old_rec_off = tree->node_size - 4;
	num_recs = 1;
	for (;;) {
		data_start = FUNC12(node, old_rec_off);
		if (data_start > size)
			break;
		old_rec_off -= 2;
		if (++num_recs < node->num_recs)
			continue;
		/* panic? */
		FUNC10(node);
		FUNC10(new_node);
		return FUNC0(-ENOSPC);
	}

	if (fd->record + 1 < num_recs) {
		/* new record is in the lower half,
		 * so leave some more space there
		 */
		old_rec_off += 2;
		num_recs--;
		data_start = FUNC12(node, old_rec_off);
	} else {
		FUNC10(node);
		FUNC9(new_node);
		fd->bnode = new_node;
		fd->record -= num_recs;
		fd->keyoffset -= data_start - 14;
		fd->entryoffset -= data_start - 14;
	}
	new_node->num_recs = node->num_recs - num_recs;
	node->num_recs = num_recs;

	new_rec_off = tree->node_size - 2;
	new_off = 14;
	size = data_start - new_off;
	num_recs = new_node->num_recs;
	data_end = data_start;
	while (num_recs) {
		FUNC14(new_node, new_rec_off, new_off);
		old_rec_off -= 2;
		new_rec_off -= 2;
		data_end = FUNC12(node, old_rec_off);
		new_off = data_end - size;
		num_recs--;
	}
	FUNC14(new_node, new_rec_off, new_off);
	FUNC6(new_node, 14, node, data_start, data_end - data_start);

	/* update new bnode header */
	node_desc.next = FUNC3(new_node->next);
	node_desc.prev = FUNC3(new_node->prev);
	node_desc.type = new_node->type;
	node_desc.height = new_node->height;
	node_desc.num_recs = FUNC2(new_node->num_recs);
	node_desc.reserved = 0;
	FUNC13(new_node, &node_desc, 0, sizeof(node_desc));

	/* update previous bnode header */
	node->next = new_node->this;
	FUNC11(node, &node_desc, 0, sizeof(node_desc));
	node_desc.next = FUNC3(node->next);
	node_desc.num_recs = FUNC2(node->num_recs);
	FUNC13(node, &node_desc, 0, sizeof(node_desc));

	/* update next bnode header */
	if (new_node->next) {
		struct hfs_bnode *next_node = FUNC8(tree, new_node->next);
		next_node->prev = new_node->this;
		FUNC11(next_node, &node_desc, 0, sizeof(node_desc));
		node_desc.prev = FUNC3(next_node->prev);
		FUNC13(next_node, &node_desc, 0, sizeof(node_desc));
		FUNC10(next_node);
	} else if (node->this == tree->leaf_tail) {
		/* if there is no next node, this might be the new tail */
		tree->leaf_tail = new_node->this;
		FUNC15(tree->inode);
	}

	FUNC7(node);
	FUNC7(new_node);
	FUNC10(node);

	return new_node;
}