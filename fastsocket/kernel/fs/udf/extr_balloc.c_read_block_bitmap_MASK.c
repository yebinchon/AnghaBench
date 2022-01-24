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
struct udf_bitmap {struct buffer_head** s_block_bitmap; int /*<<< orphan*/  s_extPosition; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int /*<<< orphan*/  partitionReferenceNum; int /*<<< orphan*/  logicalBlockNum; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_partition; } ;

/* Variables and functions */
 int EIO ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,struct kernel_lb_addr*,unsigned int) ; 
 struct buffer_head* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb,
			     struct udf_bitmap *bitmap, unsigned int block,
			     unsigned long bitmap_nr)
{
	struct buffer_head *bh = NULL;
	int retval = 0;
	struct kernel_lb_addr loc;

	loc.logicalBlockNum = bitmap->s_extPosition;
	loc.partitionReferenceNum = FUNC0(sb)->s_partition;

	bh = FUNC2(sb, FUNC1(sb, &loc, block));
	if (!bh)
		retval = -EIO;

	bitmap->s_block_bitmap[bitmap_nr] = bh;
	return retval;
}