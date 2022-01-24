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
struct TYPE_2__ {int seq; scalar_t__ flags; } ;
struct tree_mod_elem {TYPE_1__ elem; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_mod_seq_lock; int /*<<< orphan*/  tree_mod_seq_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct tree_mod_elem*) ; 
 struct tree_mod_elem* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct btrfs_fs_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC7(struct btrfs_fs_info *fs_info, gfp_t flags,
				 struct tree_mod_elem **tm_ret)
{
	struct tree_mod_elem *tm;
	int seq;

	if (FUNC6(fs_info, NULL))
		return 0;

	tm = *tm_ret = FUNC2(sizeof(*tm), flags);
	if (!tm)
		return -ENOMEM;

	tm->elem.flags = 0;
	FUNC4(&fs_info->tree_mod_seq_lock);
	if (FUNC3(&fs_info->tree_mod_seq_list)) {
		/*
		 * someone emptied the list while we were waiting for the lock.
		 * we must not add to the list, because no blocker exists. items
		 * are removed from the list only when the existing blocker is
		 * removed from the list.
		 */
		FUNC1(tm);
		seq = 0;
		FUNC5(&fs_info->tree_mod_seq_lock);
	} else {
		FUNC0(fs_info, &tm->elem);
		seq = tm->elem.seq;
	}

	return seq;
}