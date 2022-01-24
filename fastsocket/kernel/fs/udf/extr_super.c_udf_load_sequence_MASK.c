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
struct udf_sb_info {int dummy; } ;
struct super_block {long s_blocksize_bits; } ;
struct kernel_lb_addr {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  extLength; int /*<<< orphan*/  extLocation; } ;
struct TYPE_3__ {int /*<<< orphan*/  extLength; int /*<<< orphan*/  extLocation; } ;
struct anchorVolDescPtr {TYPE_2__ reserveVolDescSeqExt; TYPE_1__ mainVolDescSeqExt; } ;

/* Variables and functions */
 struct udf_sb_info* FUNC0 (struct super_block*) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,long,long,struct kernel_lb_addr*) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, struct buffer_head *bh,
			     struct kernel_lb_addr *fileset)
{
	struct anchorVolDescPtr *anchor;
	long main_s, main_e, reserve_s, reserve_e;
	struct udf_sb_info *sbi;

	sbi = FUNC0(sb);
	anchor = (struct anchorVolDescPtr *)bh->b_data;

	/* Locate the main sequence */
	main_s = FUNC1(anchor->mainVolDescSeqExt.extLocation);
	main_e = FUNC1(anchor->mainVolDescSeqExt.extLength);
	main_e = main_e >> sb->s_blocksize_bits;
	main_e += main_s;

	/* Locate the reserve sequence */
	reserve_s = FUNC1(anchor->reserveVolDescSeqExt.extLocation);
	reserve_e = FUNC1(anchor->reserveVolDescSeqExt.extLength);
	reserve_e = reserve_e >> sb->s_blocksize_bits;
	reserve_e += reserve_s;

	/* Process the main & reserve sequences */
	/* responsible for finding the PartitionDesc(s) */
	if (!FUNC2(sb, main_s, main_e, fileset))
		return 1;
	return !FUNC2(sb, reserve_s, reserve_e, fileset);
}