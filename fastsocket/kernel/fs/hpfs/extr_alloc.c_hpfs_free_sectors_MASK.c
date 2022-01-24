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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_sb_info {int sb_max_fwd_alloc; } ;
typedef  int secno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,int) ; 
 unsigned int* FUNC2 (struct super_block*,int,struct quad_buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct quad_buffer_head*) ; 
 struct hpfs_sb_info* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 

void FUNC7(struct super_block *s, secno sec, unsigned n)
{
	struct quad_buffer_head qbh;
	unsigned *bmp;
	struct hpfs_sb_info *sbi = FUNC4(s);
	/*printk("2 - ");*/
	if (!n) return;
	if (sec < 0x12) {
		FUNC1(s, "Trying to free reserved sector %08x", sec);
		return;
	}
	FUNC5(s);
	sbi->sb_max_fwd_alloc += n > 0xffff ? 0xffff : n;
	if (sbi->sb_max_fwd_alloc > 0xffffff) sbi->sb_max_fwd_alloc = 0xffffff;
	new_map:
	if (!(bmp = FUNC2(s, sec >> 14, &qbh, "free"))) {
		FUNC6(s);
		return;
	}	
	new_tst:
	if ((bmp[(sec & 0x3fff) >> 5] >> (sec & 0x1f) & 1)) {
		FUNC1(s, "sector %08x not allocated", sec);
		FUNC0(&qbh);
		FUNC6(s);
		return;
	}
	bmp[(sec & 0x3fff) >> 5] |= 1 << (sec & 0x1f);
	if (!--n) {
		FUNC3(&qbh);
		FUNC0(&qbh);
		FUNC6(s);
		return;
	}	
	if (!(++sec & 0x3fff)) {
		FUNC3(&qbh);
		FUNC0(&qbh);
		goto new_map;
	}
	goto new_tst;
}