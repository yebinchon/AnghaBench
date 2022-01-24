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
typedef  int /*<<< orphan*/  u32 ;
struct hfs_btree {int depth; int node_size; int /*<<< orphan*/  hash_lock; } ;
struct hfs_bnode_desc {int type; int height; int /*<<< orphan*/  num_recs; int /*<<< orphan*/  next; int /*<<< orphan*/  prev; } ;
struct hfs_bnode {int num_recs; int type; int height; int /*<<< orphan*/  lock_wq; int /*<<< orphan*/  flags; int /*<<< orphan*/ * page; void* next; void* prev; scalar_t__ page_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct hfs_bnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HFS_BNODE_ERROR ; 
 int /*<<< orphan*/  HFS_BNODE_NEW ; 
#define  HFS_NODE_HEADER 131 
#define  HFS_NODE_INDEX 130 
#define  HFS_NODE_LEAF 129 
#define  HFS_NODE_MAP 128 
 struct hfs_bnode* FUNC1 (struct hfs_btree*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hfs_bnode* FUNC5 (struct hfs_btree*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hfs_bnode*) ; 
 int /*<<< orphan*/  FUNC7 (struct hfs_bnode*) ; 
 int FUNC8 (struct hfs_bnode*,int) ; 
 int FUNC9 (struct hfs_bnode*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

struct hfs_bnode *FUNC18(struct hfs_btree *tree, u32 num)
{
	struct hfs_bnode *node;
	struct hfs_bnode_desc *desc;
	int i, rec_off, off, next_off;
	int entry_size, key_size;

	FUNC13(&tree->hash_lock);
	node = FUNC5(tree, num);
	if (node) {
		FUNC6(node);
		FUNC14(&tree->hash_lock);
		FUNC16(node->lock_wq, !FUNC15(HFS_BNODE_NEW, &node->flags));
		if (FUNC15(HFS_BNODE_ERROR, &node->flags))
			goto node_error;
		return node;
	}
	FUNC14(&tree->hash_lock);
	node = FUNC1(tree, num);
	if (!node)
		return FUNC0(-ENOMEM);
	if (FUNC15(HFS_BNODE_ERROR, &node->flags))
		goto node_error;
	if (!FUNC15(HFS_BNODE_NEW, &node->flags))
		return node;

	desc = (struct hfs_bnode_desc *)(FUNC10(node->page[0]) + node->page_offset);
	node->prev = FUNC3(desc->prev);
	node->next = FUNC3(desc->next);
	node->num_recs = FUNC2(desc->num_recs);
	node->type = desc->type;
	node->height = desc->height;
	FUNC11(node->page[0]);

	switch (node->type) {
	case HFS_NODE_HEADER:
	case HFS_NODE_MAP:
		if (node->height != 0)
			goto node_error;
		break;
	case HFS_NODE_LEAF:
		if (node->height != 1)
			goto node_error;
		break;
	case HFS_NODE_INDEX:
		if (node->height <= 1 || node->height > tree->depth)
			goto node_error;
		break;
	default:
		goto node_error;
	}

	rec_off = tree->node_size - 2;
	off = FUNC8(node, rec_off);
	if (off != sizeof(struct hfs_bnode_desc))
		goto node_error;
	for (i = 1; i <= node->num_recs; off = next_off, i++) {
		rec_off -= 2;
		next_off = FUNC8(node, rec_off);
		if (next_off <= off ||
		    next_off > tree->node_size ||
		    next_off & 1)
			goto node_error;
		entry_size = next_off - off;
		if (node->type != HFS_NODE_INDEX &&
		    node->type != HFS_NODE_LEAF)
			continue;
		key_size = FUNC9(node, off) + 1;
		if (key_size >= entry_size /*|| key_size & 1*/)
			goto node_error;
	}
	FUNC4(HFS_BNODE_NEW, &node->flags);
	FUNC17(&node->lock_wq);
	return node;

node_error:
	FUNC12(HFS_BNODE_ERROR, &node->flags);
	FUNC4(HFS_BNODE_NEW, &node->flags);
	FUNC17(&node->lock_wq);
	FUNC7(node);
	return FUNC0(-EIO);
}