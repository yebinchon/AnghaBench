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
typedef  int uint ;
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int befs_off_t ;
typedef  int /*<<< orphan*/  befs_data_stream ;
typedef  int befs_blocknr_t ;
typedef  int /*<<< orphan*/  befs_block_run ;
struct TYPE_2__ {int block_shift; } ;

/* Variables and functions */
 scalar_t__ BEFS_OK ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 struct buffer_head* FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,int) ; 
 scalar_t__ FUNC4 (struct super_block*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

struct buffer_head *
FUNC5(struct super_block *sb, befs_data_stream * ds,
		     befs_off_t pos, uint * off)
{
	struct buffer_head *bh = NULL;
	befs_block_run run;
	befs_blocknr_t block;	/* block coresponding to pos */

	FUNC2(sb, "---> befs_read_datastream() %Lu", pos);
	block = pos >> FUNC0(sb)->block_shift;
	if (off)
		*off = pos - (block << FUNC0(sb)->block_shift);

	if (FUNC4(sb, ds, block, &run) != BEFS_OK) {
		FUNC3(sb, "BeFS: Error finding disk addr of block %lu",
			   block);
		FUNC2(sb, "<--- befs_read_datastream() ERROR");
		return NULL;
	}
	bh = FUNC1(sb, run);
	if (!bh) {
		FUNC3(sb, "BeFS: Error reading block %lu from datastream",
			   block);
		return NULL;
	}

	FUNC2(sb, "<--- befs_read_datastream() read data, starting at %Lu",
		   pos);

	return bh;
}