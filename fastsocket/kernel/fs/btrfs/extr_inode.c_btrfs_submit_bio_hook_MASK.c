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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;
struct btrfs_root {int /*<<< orphan*/  fs_info; TYPE_1__ root_key; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {int flags; struct btrfs_root* root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_DATA_RELOC_TREE_OBJECTID ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATASUM ; 
 unsigned long EXTENT_BIO_COMPRESSED ; 
 int REQ_WRITE ; 
 int /*<<< orphan*/  __btrfs_submit_bio_done ; 
 int /*<<< orphan*/  __btrfs_submit_bio_start ; 
 int FUNC1 (int /*<<< orphan*/ ,struct bio*,int) ; 
 scalar_t__ FUNC2 (struct btrfs_root*,struct inode*) ; 
 int FUNC3 (struct btrfs_root*,struct inode*,struct bio*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct btrfs_root*,int,struct bio*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct bio*,int,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct inode*,int,struct bio*,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, int rw, struct bio *bio,
			  int mirror_num, unsigned long bio_flags,
			  u64 bio_offset)
{
	struct btrfs_root *root = FUNC0(inode)->root;
	int ret = 0;
	int skip_sum;
	int metadata = 0;

	skip_sum = FUNC0(inode)->flags & BTRFS_INODE_NODATASUM;

	if (FUNC2(root, inode))
		metadata = 2;

	if (!(rw & REQ_WRITE)) {
		ret = FUNC1(root->fs_info, bio, metadata);
		if (ret)
			return ret;

		if (bio_flags & EXTENT_BIO_COMPRESSED) {
			return FUNC5(inode, bio,
						    mirror_num, bio_flags);
		} else if (!skip_sum) {
			ret = FUNC3(root, inode, bio, NULL);
			if (ret)
				return ret;
		}
		goto mapit;
	} else if (!skip_sum) {
		/* csum items have already been cloned */
		if (root->root_key.objectid == BTRFS_DATA_RELOC_TREE_OBJECTID)
			goto mapit;
		/* we're doing a write, do the async checksumming */
		return FUNC6(FUNC0(inode)->root->fs_info,
				   inode, rw, bio, mirror_num,
				   bio_flags, bio_offset,
				   __btrfs_submit_bio_start,
				   __btrfs_submit_bio_done);
	}

mapit:
	return FUNC4(root, rw, bio, mirror_num, 0);
}