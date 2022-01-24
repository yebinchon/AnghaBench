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
struct ulist {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int FUNC0 (struct btrfs_trans_handle*,struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ulist*,struct ulist*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct ulist*) ; 
 struct ulist* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ulist*) ; 

__attribute__((used)) static int FUNC4(struct btrfs_trans_handle *trans,
				struct btrfs_fs_info *fs_info, u64 bytenr,
				u64 delayed_ref_seq, u64 time_seq,
				struct ulist **leafs,
				const u64 *extent_item_pos)
{
	struct ulist *tmp;
	int ret;

	tmp = FUNC2(GFP_NOFS);
	if (!tmp)
		return -ENOMEM;
	*leafs = FUNC2(GFP_NOFS);
	if (!*leafs) {
		FUNC3(tmp);
		return -ENOMEM;
	}

	ret = FUNC0(trans, fs_info, bytenr, delayed_ref_seq,
				time_seq, *leafs, tmp, extent_item_pos);
	FUNC3(tmp);

	if (ret < 0 && ret != -ENOENT) {
		FUNC1(*leafs);
		return ret;
	}

	return 0;
}