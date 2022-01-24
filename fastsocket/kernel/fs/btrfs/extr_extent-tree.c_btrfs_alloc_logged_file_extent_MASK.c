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
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_caching_control {scalar_t__ progress; int /*<<< orphan*/  mutex; } ;
struct btrfs_block_group_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RESERVE_ALLOC_NO_ACCOUNT ; 
 int FUNC1 (struct btrfs_root*,scalar_t__,scalar_t__) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*) ; 
 struct btrfs_block_group_cache* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*) ; 
 int FUNC6 (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ; 
 int FUNC7 (struct btrfs_block_group_cache*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_block_group_cache*,struct btrfs_trans_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct btrfs_caching_control* FUNC9 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_caching_control*) ; 

int FUNC13(struct btrfs_trans_handle *trans,
				   struct btrfs_root *root,
				   u64 root_objectid, u64 owner, u64 offset,
				   struct btrfs_key *ins)
{
	int ret;
	struct btrfs_block_group_cache *block_group;
	struct btrfs_caching_control *caching_ctl;
	u64 start = ins->objectid;
	u64 num_bytes = ins->offset;

	block_group = FUNC4(root->fs_info, ins->objectid);
	FUNC8(block_group, trans, NULL, 0);
	caching_ctl = FUNC9(block_group);

	if (!caching_ctl) {
		FUNC0(!FUNC3(block_group));
		ret = FUNC6(block_group, start, num_bytes);
		FUNC0(ret); /* -ENOMEM */
	} else {
		FUNC10(&caching_ctl->mutex);

		if (start >= caching_ctl->progress) {
			ret = FUNC1(root, start, num_bytes);
			FUNC0(ret); /* -ENOMEM */
		} else if (start + num_bytes <= caching_ctl->progress) {
			ret = FUNC6(block_group,
						      start, num_bytes);
			FUNC0(ret); /* -ENOMEM */
		} else {
			num_bytes = caching_ctl->progress - start;
			ret = FUNC6(block_group,
						      start, num_bytes);
			FUNC0(ret); /* -ENOMEM */

			start = caching_ctl->progress;
			num_bytes = ins->objectid + ins->offset -
				    caching_ctl->progress;
			ret = FUNC1(root, start, num_bytes);
			FUNC0(ret); /* -ENOMEM */
		}

		FUNC11(&caching_ctl->mutex);
		FUNC12(caching_ctl);
	}

	ret = FUNC7(block_group, ins->offset,
					  RESERVE_ALLOC_NO_ACCOUNT);
	FUNC0(ret); /* logic error */
	FUNC5(block_group);
	ret = FUNC2(trans, root, 0, root_objectid,
					 0, owner, offset, ins, 1);
	return ret;
}