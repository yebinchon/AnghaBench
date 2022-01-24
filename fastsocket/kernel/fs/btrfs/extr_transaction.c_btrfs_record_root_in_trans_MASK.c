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
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {scalar_t__ last_trans; TYPE_1__* fs_info; int /*<<< orphan*/  in_trans_setup; int /*<<< orphan*/  ref_cows; } ;
struct TYPE_2__ {int /*<<< orphan*/  reloc_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(struct btrfs_trans_handle *trans,
			       struct btrfs_root *root)
{
	if (!root->ref_cows)
		return 0;

	/*
	 * see record_root_in_trans for comments about in_trans_setup usage
	 * and barriers
	 */
	FUNC3();
	if (root->last_trans == trans->transid &&
	    !root->in_trans_setup)
		return 0;

	FUNC0(&root->fs_info->reloc_mutex);
	FUNC2(trans, root);
	FUNC1(&root->fs_info->reloc_mutex);

	return 0;
}