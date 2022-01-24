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
typedef  scalar_t__ ulong ;
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  befs_data_stream ;
typedef  int /*<<< orphan*/  befs_block_run ;
struct TYPE_3__ {int /*<<< orphan*/  ds; } ;
struct TYPE_4__ {TYPE_1__ i_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_IADDR ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int BEFS_OK ; 
 int EFBIG ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct super_block*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,struct super_block*,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct inode *inode, sector_t block,
	       struct buffer_head *bh_result, int create)
{
	struct super_block *sb = inode->i_sb;
	befs_data_stream *ds = &FUNC0(inode)->i_data.ds;
	befs_block_run run = BAD_IADDR;
	int res = 0;
	ulong disk_off;

	FUNC1(sb, "---> befs_get_block() for inode %lu, block %ld",
		   inode->i_ino, block);

	if (block < 0) {
		FUNC2(sb, "befs_get_block() was asked for a block "
			   "number less than zero: block %ld in inode %lu",
			   block, inode->i_ino);
		return -EIO;
	}

	if (create) {
		FUNC2(sb, "befs_get_block() was asked to write to "
			   "block %ld in inode %lu", block, inode->i_ino);
		return -EPERM;
	}

	res = FUNC3(sb, ds, block, &run);
	if (res != BEFS_OK) {
		FUNC2(sb,
			   "<--- befs_get_block() for inode %lu, block "
			   "%ld ERROR", inode->i_ino, block);
		return -EFBIG;
	}

	disk_off = (ulong) FUNC4(sb, &run);

	FUNC5(bh_result, inode->i_sb, disk_off);

	FUNC1(sb, "<--- befs_get_block() for inode %lu, block %ld, "
		   "disk address %lu", inode->i_ino, block, disk_off);

	return 0;
}