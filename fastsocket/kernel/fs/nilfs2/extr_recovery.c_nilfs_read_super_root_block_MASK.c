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
typedef  scalar_t__ u32 ;
struct super_block {unsigned int s_blocksize; } ;
struct nilfs_super_root {int /*<<< orphan*/  sr_sum; int /*<<< orphan*/  sr_bytes; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT ; 
 int NILFS_SEG_FAIL_IO ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct buffer_head*,scalar_t__*,int,unsigned int,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 struct buffer_head* FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct super_block *sb, sector_t sr_block,
				struct buffer_head **pbh, int check)
{
	struct buffer_head *bh_sr;
	struct nilfs_super_root *sr;
	u32 crc;
	int ret;

	*pbh = NULL;
	bh_sr = FUNC6(sb, sr_block);
	if (FUNC7(!bh_sr)) {
		ret = NILFS_SEG_FAIL_IO;
		goto failed;
	}

	sr = (struct nilfs_super_root *)bh_sr->b_data;
	if (check) {
		unsigned bytes = FUNC3(sr->sr_bytes);

		if (bytes == 0 || bytes > sb->s_blocksize) {
			ret = NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT;
			goto failed_bh;
		}
		if (FUNC2(FUNC0(sb), bh_sr, &crc,
				  sizeof(sr->sr_sum), bytes, sr_block, 1)) {
			ret = NILFS_SEG_FAIL_IO;
			goto failed_bh;
		}
		if (crc != FUNC4(sr->sr_sum)) {
			ret = NILFS_SEG_FAIL_CHECKSUM_SUPER_ROOT;
			goto failed_bh;
		}
	}
	*pbh = bh_sr;
	return 0;

 failed_bh:
	FUNC1(bh_sr);

 failed:
	return FUNC5(ret);
}