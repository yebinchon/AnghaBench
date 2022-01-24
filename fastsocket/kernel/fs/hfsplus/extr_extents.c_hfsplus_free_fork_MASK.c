#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct hfsplus_fork_raw {TYPE_3__* extents; int /*<<< orphan*/  total_blocks; } ;
struct hfs_find_data {TYPE_2__* key; } ;
typedef  TYPE_3__* hfsplus_extent_rec ;
struct TYPE_10__ {int /*<<< orphan*/  ext_tree; } ;
struct TYPE_9__ {int /*<<< orphan*/  block_count; } ;
struct TYPE_7__ {int /*<<< orphan*/  start_block; } ;
struct TYPE_8__ {TYPE_1__ ext; } ;

/* Variables and functions */
 TYPE_6__ FUNC0 (struct super_block*) ; 
 int FUNC1 (struct hfs_find_data*,TYPE_3__*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int FUNC6 (struct super_block*,TYPE_3__*,scalar_t__,scalar_t__) ; 

int FUNC7(struct super_block *sb, u32 cnid, struct hfsplus_fork_raw *fork, int type)
{
	struct hfs_find_data fd;
	hfsplus_extent_rec ext_entry;
	u32 total_blocks, blocks, start;
	int res, i;

	total_blocks = FUNC2(fork->total_blocks);
	if (!total_blocks)
		return 0;

	blocks = 0;
	for (i = 0; i < 8; i++)
		blocks += FUNC2(fork->extents[i].block_count);

	res = FUNC6(sb, fork->extents, blocks, blocks);
	if (res)
		return res;
	if (total_blocks == blocks)
		return 0;

	FUNC5(FUNC0(sb).ext_tree, &fd);
	do {
		res = FUNC1(&fd, ext_entry, cnid,
						total_blocks, type);
		if (res)
			break;
		start = FUNC2(fd.key->ext.start_block);
		FUNC6(sb, ext_entry,
				     total_blocks - start,
				     total_blocks);
		FUNC3(&fd);
		total_blocks = start;
	} while (total_blocks > blocks);
	FUNC4(&fd);

	return res;
}