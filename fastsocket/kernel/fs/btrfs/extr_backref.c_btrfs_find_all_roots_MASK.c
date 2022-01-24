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
typedef  int /*<<< orphan*/  u64 ;
struct ulist_node {int /*<<< orphan*/  val; } ;
struct ulist_iterator {int dummy; } ;
struct ulist {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct ulist_iterator*) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ulist*,struct ulist*,int /*<<< orphan*/ *) ; 
 struct ulist* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ulist*) ; 
 struct ulist_node* FUNC4 (struct ulist*,struct ulist_iterator*) ; 

int FUNC5(struct btrfs_trans_handle *trans,
				struct btrfs_fs_info *fs_info, u64 bytenr,
				u64 delayed_ref_seq, u64 time_seq,
				struct ulist **roots)
{
	struct ulist *tmp;
	struct ulist_node *node = NULL;
	struct ulist_iterator uiter;
	int ret;

	tmp = FUNC2(GFP_NOFS);
	if (!tmp)
		return -ENOMEM;
	*roots = FUNC2(GFP_NOFS);
	if (!*roots) {
		FUNC3(tmp);
		return -ENOMEM;
	}

	FUNC0(&uiter);
	while (1) {
		ret = FUNC1(trans, fs_info, bytenr, delayed_ref_seq,
					time_seq, tmp, *roots, NULL);
		if (ret < 0 && ret != -ENOENT) {
			FUNC3(tmp);
			FUNC3(*roots);
			return ret;
		}
		node = FUNC4(tmp, &uiter);
		if (!node)
			break;
		bytenr = node->val;
	}

	FUNC3(tmp);
	return 0;
}