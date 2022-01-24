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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int REQ_WRITE ; 
 int /*<<< orphan*/  __btrfs_submit_bio_done ; 
 int /*<<< orphan*/  __btrfs_submit_bio_start_direct_io ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct bio*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btrfs_root*,struct inode*,struct bio*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct btrfs_root*,struct inode*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct btrfs_root*,int,struct bio*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct inode*,int,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC8(struct bio *bio, struct inode *inode,
					 int rw, u64 file_offset, int skip_sum,
					 u32 *csums, int async_submit)
{
	int write = rw & REQ_WRITE;
	struct btrfs_root *root = FUNC0(inode)->root;
	int ret;

	FUNC1(bio);

	if (!write) {
		ret = FUNC3(root->fs_info, bio, 0);
		if (ret)
			goto err;
	}

	if (skip_sum)
		goto map;

	if (write && async_submit) {
		ret = FUNC7(root->fs_info,
				   inode, rw, bio, 0, 0,
				   file_offset,
				   __btrfs_submit_bio_start_direct_io,
				   __btrfs_submit_bio_done);
		goto err;
	} else if (write) {
		/*
		 * If we aren't doing async submit, calculate the csum of the
		 * bio now.
		 */
		ret = FUNC4(root, inode, bio, file_offset, 1);
		if (ret)
			goto err;
	} else if (!skip_sum) {
		ret = FUNC5(root, inode, bio,
					  file_offset, csums);
		if (ret)
			goto err;
	}

map:
	ret = FUNC6(root, rw, bio, 0, async_submit);
err:
	FUNC2(bio);
	return ret;
}