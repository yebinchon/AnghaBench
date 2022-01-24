#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode_defrag {int /*<<< orphan*/  root; int /*<<< orphan*/  transid; int /*<<< orphan*/  ino; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; } ;
struct TYPE_4__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {TYPE_2__* fs_info; TYPE_1__ root_key; int /*<<< orphan*/  last_trans; } ;
struct TYPE_6__ {int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;
struct TYPE_5__ {int /*<<< orphan*/  defrag_inodes_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_DEFRAG ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_IN_DEFRAG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct inode_defrag*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode_defrag*) ; 
 struct inode_defrag* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct btrfs_trans_handle *trans,
			   struct inode *inode)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	struct inode_defrag *defrag;
	u64 transid;

	if (!FUNC4(root, AUTO_DEFRAG))
		return 0;

	if (FUNC2(root->fs_info))
		return 0;

	if (FUNC9(BTRFS_INODE_IN_DEFRAG, &FUNC0(inode)->runtime_flags))
		return 0;

	if (trans)
		transid = trans->transid;
	else
		transid = FUNC0(inode)->root->last_trans;

	defrag = FUNC6(sizeof(*defrag), GFP_NOFS);
	if (!defrag)
		return -ENOMEM;

	defrag->ino = FUNC3(inode);
	defrag->transid = transid;
	defrag->root = root->root_key.objectid;

	FUNC7(&root->fs_info->defrag_inodes_lock);
	if (!FUNC9(BTRFS_INODE_IN_DEFRAG, &FUNC0(inode)->runtime_flags))
		FUNC1(inode, defrag);
	else
		FUNC5(defrag);
	FUNC8(&root->fs_info->defrag_inodes_lock);
	return 0;
}