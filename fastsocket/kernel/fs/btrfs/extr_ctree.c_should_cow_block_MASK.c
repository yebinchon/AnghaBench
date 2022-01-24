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
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {int /*<<< orphan*/  force_cow; TYPE_1__ root_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_HEADER_FLAG_RELOC ; 
 int /*<<< orphan*/  BTRFS_HEADER_FLAG_WRITTEN ; 
 scalar_t__ BTRFS_TREE_RELOC_OBJECTID ; 
 scalar_t__ FUNC0 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int FUNC3(struct btrfs_trans_handle *trans,
				   struct btrfs_root *root,
				   struct extent_buffer *buf)
{
	/* ensure we can see the force_cow */
	FUNC2();

	/*
	 * We do not need to cow a block if
	 * 1) this block is not created or changed in this transaction;
	 * 2) this block does not belong to TREE_RELOC tree;
	 * 3) the root is not forced COW.
	 *
	 * What is forced COW:
	 *    when we create snapshot during commiting the transaction,
	 *    after we've finished coping src root, we must COW the shared
	 *    block to ensure the metadata consistency.
	 */
	if (FUNC1(buf) == trans->transid &&
	    !FUNC0(buf, BTRFS_HEADER_FLAG_WRITTEN) &&
	    !(root->root_key.objectid != BTRFS_TREE_RELOC_OBJECTID &&
	      FUNC0(buf, BTRFS_HEADER_FLAG_RELOC)) &&
	    !root->force_cow)
		return 0;
	return 1;
}