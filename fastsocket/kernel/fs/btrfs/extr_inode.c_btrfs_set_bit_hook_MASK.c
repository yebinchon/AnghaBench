#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_state {int state; scalar_t__ start; scalar_t__ end; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  delalloc_inodes; int /*<<< orphan*/  delalloc_bytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  outstanding_extents; struct btrfs_root* root; } ;
struct TYPE_3__ {int /*<<< orphan*/  delalloc_lock; int /*<<< orphan*/  delalloc_inodes; int /*<<< orphan*/  delalloc_bytes; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_FIRST_DELALLOC ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inode *inode,
			       struct extent_state *state, int *bits)
{

	/*
	 * set_bit and clear bit hooks normally require _irqsave/restore
	 * but in this case, we are only testing for the DELALLOC
	 * bit, which is only set or cleared with irqs on
	 */
	if (!(state->state & EXTENT_DELALLOC) && (*bits & EXTENT_DELALLOC)) {
		struct btrfs_root *root = FUNC0(inode)->root;
		u64 len = state->end + 1 - state->start;
		bool do_list = !FUNC1(root, inode);

		if (*bits & EXTENT_FIRST_DELALLOC) {
			*bits &= ~EXTENT_FIRST_DELALLOC;
		} else {
			FUNC4(&FUNC0(inode)->lock);
			FUNC0(inode)->outstanding_extents++;
			FUNC5(&FUNC0(inode)->lock);
		}

		FUNC4(&root->fs_info->delalloc_lock);
		FUNC0(inode)->delalloc_bytes += len;
		root->fs_info->delalloc_bytes += len;
		if (do_list && FUNC3(&FUNC0(inode)->delalloc_inodes)) {
			FUNC2(&FUNC0(inode)->delalloc_inodes,
				      &root->fs_info->delalloc_inodes);
		}
		FUNC5(&root->fs_info->delalloc_lock);
	}
}