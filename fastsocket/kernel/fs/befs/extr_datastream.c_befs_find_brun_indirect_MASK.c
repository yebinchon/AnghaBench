#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  start; int /*<<< orphan*/  allocation_group; } ;
typedef  TYPE_1__ befs_disk_block_run ;
struct TYPE_10__ {int len; int start; int /*<<< orphan*/  allocation_group; } ;
struct TYPE_9__ {scalar_t__ max_direct_range; TYPE_3__ indirect; } ;
typedef  TYPE_2__ befs_data_stream ;
typedef  scalar_t__ befs_blocknr_t ;
typedef  TYPE_3__ befs_block_run ;
struct TYPE_11__ {scalar_t__ block_shift; } ;

/* Variables and functions */
 int BEFS_ERR ; 
 int BEFS_OK ; 
 TYPE_7__* FUNC0 (struct super_block*) ; 
 struct buffer_head* FUNC1 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,scalar_t__) ; 
 int FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct super_block*,TYPE_3__*) ; 

__attribute__((used)) static int
FUNC9(struct super_block *sb,
			befs_data_stream * data, befs_blocknr_t blockno,
			befs_block_run * run)
{
	int i, j;
	befs_blocknr_t sum = 0;
	befs_blocknr_t indir_start_blk;
	befs_blocknr_t search_blk;
	struct buffer_head *indirblock;
	befs_disk_block_run *array;

	befs_block_run indirect = data->indirect;
	befs_blocknr_t indirblockno = FUNC8(sb, &indirect);
	int arraylen = FUNC4(sb);

	FUNC2(sb, "---> befs_find_brun_indirect(), find %lu", blockno);

	indir_start_blk = data->max_direct_range >> FUNC0(sb)->block_shift;
	search_blk = blockno - indir_start_blk;

	/* Examine blocks of the indirect run one at a time */
	for (i = 0; i < indirect.len; i++) {
		indirblock = FUNC1(sb, indirblockno + i);
		if (indirblock == NULL) {
			FUNC2(sb,
				   "---> befs_find_brun_indirect() failed to "
				   "read disk block %lu from the indirect brun",
				   indirblockno + i);
			return BEFS_ERR;
		}

		array = (befs_disk_block_run *) indirblock->b_data;

		for (j = 0; j < arraylen; ++j) {
			int len = FUNC6(sb, array[j].len);

			if (search_blk >= sum && search_blk < sum + len) {
				int offset = search_blk - sum;
				run->allocation_group =
				    FUNC7(sb, array[j].allocation_group);
				run->start =
				    FUNC6(sb, array[j].start) + offset;
				run->len =
				    FUNC6(sb, array[j].len) - offset;

				FUNC5(indirblock);
				FUNC2(sb,
					   "<--- befs_find_brun_indirect() found "
					   "file block %lu at indirect[%d]",
					   blockno, j + (i * arraylen));
				return BEFS_OK;
			}
			sum += len;
		}

		FUNC5(indirblock);
	}

	/* Only fallthrough is an error */
	FUNC3(sb, "BeFS: befs_find_brun_indirect() failed to find "
		   "file block %lu", blockno);

	FUNC2(sb, "<--- befs_find_brun_indirect() ERROR");
	return BEFS_ERR;
}