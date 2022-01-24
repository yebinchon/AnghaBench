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
struct seq_list {int flags; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_mod_seq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,struct seq_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct btrfs_fs_info *fs_info,
			    struct seq_list *elem)
{
	elem->flags = 1;
	FUNC1(&fs_info->tree_mod_seq_lock);
	FUNC0(fs_info, elem);
	FUNC2(&fs_info->tree_mod_seq_lock);
}