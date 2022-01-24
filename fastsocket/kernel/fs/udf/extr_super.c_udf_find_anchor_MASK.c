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
struct udf_sb_info {scalar_t__ s_last_block; } ;
struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDF_FLAG_VARCONV ; 
 struct udf_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct super_block*,scalar_t__,struct kernel_lb_addr*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb,
			   struct kernel_lb_addr *fileset)
{
	sector_t lastblock;
	struct udf_sb_info *sbi = FUNC1(sb);

	lastblock = FUNC3(sb, sbi->s_last_block, fileset);
	if (lastblock)
		goto out;

	/* No anchor found? Try VARCONV conversion of block numbers */
	FUNC2(sb, UDF_FLAG_VARCONV);
	/* Firstly, we try to not convert number of the last block */
	lastblock = FUNC3(sb,
				FUNC4(sbi->s_last_block),
				fileset);
	if (lastblock)
		goto out;

	/* Secondly, we try with converted number of the last block */
	lastblock = FUNC3(sb, sbi->s_last_block, fileset);
	if (!lastblock) {
		/* VARCONV didn't help. Clear it. */
		FUNC0(sb, UDF_FLAG_VARCONV);
		return 0;
	}
out:
	sbi->s_last_block = lastblock;
	return 1;
}