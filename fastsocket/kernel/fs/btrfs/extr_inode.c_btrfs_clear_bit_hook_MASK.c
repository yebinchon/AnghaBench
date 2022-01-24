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
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_state {int state; scalar_t__ end; scalar_t__ start; } ;
struct TYPE_4__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_2__* fs_info; TYPE_1__ root_key; } ;
struct TYPE_6__ {scalar_t__ delalloc_bytes; int /*<<< orphan*/  delalloc_inodes; int /*<<< orphan*/  lock; int /*<<< orphan*/  outstanding_extents; struct btrfs_root* root; } ;
struct TYPE_5__ {int /*<<< orphan*/  delalloc_lock; int /*<<< orphan*/  delalloc_bytes; } ;

/* Variables and functions */
 scalar_t__ BTRFS_DATA_RELOC_TREE_OBJECTID ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_DO_ACCOUNTING ; 
 int EXTENT_FIRST_DELALLOC ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct inode *inode,
				 struct extent_state *state, int *bits)
{
	/*
	 * set_bit and clear bit hooks normally require _irqsave/restore
	 * but in this case, we are only testing for the DELALLOC
	 * bit, which is only set or cleared with irqs on
	 */
	if ((state->state & EXTENT_DELALLOC) && (*bits & EXTENT_DELALLOC)) {
		struct btrfs_root *root = FUNC0(inode)->root;
		u64 len = state->end + 1 - state->start;
		bool do_list = !FUNC3(root, inode);

		if (*bits & EXTENT_FIRST_DELALLOC) {
			*bits &= ~EXTENT_FIRST_DELALLOC;
		} else if (!(*bits & EXTENT_DO_ACCOUNTING)) {
			FUNC6(&FUNC0(inode)->lock);
			FUNC0(inode)->outstanding_extents--;
			FUNC7(&FUNC0(inode)->lock);
		}

		if (*bits & EXTENT_DO_ACCOUNTING)
			FUNC1(inode, len);

		if (root->root_key.objectid != BTRFS_DATA_RELOC_TREE_OBJECTID
		    && do_list)
			FUNC2(inode, len);

		FUNC6(&root->fs_info->delalloc_lock);
		root->fs_info->delalloc_bytes -= len;
		FUNC0(inode)->delalloc_bytes -= len;

		if (do_list && FUNC0(inode)->delalloc_bytes == 0 &&
		    !FUNC5(&FUNC0(inode)->delalloc_inodes)) {
			FUNC4(&FUNC0(inode)->delalloc_inodes);
		}
		FUNC7(&root->fs_info->delalloc_lock);
	}
}