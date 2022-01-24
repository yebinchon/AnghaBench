#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int s_dirt; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
typedef  int /*<<< orphan*/  hfs_extent_rec ;
struct TYPE_9__ {scalar_t__ alloc_blocks; scalar_t__ first_blocks; scalar_t__ clump_blocks; scalar_t__ cached_start; int flags; scalar_t__ cached_blocks; TYPE_1__* cached_extents; int /*<<< orphan*/  extents_lock; TYPE_1__* first_extents; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {void* count; void* block; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_EXTENT ; 
 int ENOSPC ; 
 scalar_t__ HFS_FIRSTUSER_CNID ; 
 int /*<<< orphan*/  HFS_FLG_ALT_MDB_DIRTY ; 
 int HFS_FLG_EXT_DIRTY ; 
 int HFS_FLG_EXT_NEW ; 
 int /*<<< orphan*/  HFS_FLG_MDB_DIRTY ; 
 TYPE_6__* FUNC0 (struct inode*) ; 
 TYPE_5__* FUNC1 (struct super_block*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (struct super_block*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC15(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	u32 start, len, goal;
	int res;

	FUNC12(&FUNC0(inode)->extents_lock);
	if (FUNC0(inode)->alloc_blocks == FUNC0(inode)->first_blocks)
		goal = FUNC6(FUNC0(inode)->first_extents);
	else {
		res = FUNC7(inode, FUNC0(inode)->alloc_blocks);
		if (res)
			goto out;
		goal = FUNC6(FUNC0(inode)->cached_extents);
	}

	len = FUNC0(inode)->clump_blocks;
	start = FUNC9(sb, goal, &len);
	if (!len) {
		res = -ENOSPC;
		goto out;
	}

	FUNC3(DBG_EXTENT, "extend %lu: %u,%u\n", inode->i_ino, start, len);
	if (FUNC0(inode)->alloc_blocks == FUNC0(inode)->first_blocks) {
		if (!FUNC0(inode)->first_blocks) {
			FUNC3(DBG_EXTENT, "first extents\n");
			/* no extents yet */
			FUNC0(inode)->first_extents[0].block = FUNC2(start);
			FUNC0(inode)->first_extents[0].count = FUNC2(len);
			res = 0;
		} else {
			/* try to append to extents in inode */
			res = FUNC4(FUNC0(inode)->first_extents,
					     FUNC0(inode)->alloc_blocks,
					     start, len);
			if (res == -ENOSPC)
				goto insert_extent;
		}
		if (!res) {
			FUNC5(FUNC0(inode)->first_extents);
			FUNC0(inode)->first_blocks += len;
		}
	} else {
		res = FUNC4(FUNC0(inode)->cached_extents,
				     FUNC0(inode)->alloc_blocks -
				     FUNC0(inode)->cached_start,
				     start, len);
		if (!res) {
			FUNC5(FUNC0(inode)->cached_extents);
			FUNC0(inode)->flags |= HFS_FLG_EXT_DIRTY;
			FUNC0(inode)->cached_blocks += len;
		} else if (res == -ENOSPC)
			goto insert_extent;
	}
out:
	FUNC13(&FUNC0(inode)->extents_lock);
	if (!res) {
		FUNC0(inode)->alloc_blocks += len;
		FUNC10(inode);
		if (inode->i_ino < HFS_FIRSTUSER_CNID)
			FUNC14(HFS_FLG_ALT_MDB_DIRTY, &FUNC1(sb)->flags);
		FUNC14(HFS_FLG_MDB_DIRTY, &FUNC1(sb)->flags);
		sb->s_dirt = 1;
	}
	return res;

insert_extent:
	FUNC3(DBG_EXTENT, "insert new extent\n");
	FUNC8(inode);

	FUNC11(FUNC0(inode)->cached_extents, 0, sizeof(hfs_extent_rec));
	FUNC0(inode)->cached_extents[0].block = FUNC2(start);
	FUNC0(inode)->cached_extents[0].count = FUNC2(len);
	FUNC5(FUNC0(inode)->cached_extents);
	FUNC0(inode)->flags |= HFS_FLG_EXT_DIRTY|HFS_FLG_EXT_NEW;
	FUNC0(inode)->cached_start = FUNC0(inode)->alloc_blocks;
	FUNC0(inode)->cached_blocks = len;

	res = 0;
	goto out;
}