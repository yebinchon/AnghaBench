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
struct minix_sb_info {int s_zmap_blocks; int s_firstdatazone; int s_nzones; struct buffer_head** s_zmap; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  bitmap_lock ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct minix_sb_info* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct inode * inode)
{
	struct minix_sb_info *sbi = FUNC2(inode->i_sb);
	int bits_per_zone = 8 * inode->i_sb->s_blocksize;
	int i;

	for (i = 0; i < sbi->s_zmap_blocks; i++) {
		struct buffer_head *bh = sbi->s_zmap[i];
		int j;

		FUNC4(&bitmap_lock);
		j = FUNC1(bh->b_data, bits_per_zone);
		if (j < bits_per_zone) {
			FUNC3(j, bh->b_data);
			FUNC5(&bitmap_lock);
			FUNC0(bh);
			j += i * bits_per_zone + sbi->s_firstdatazone-1;
			if (j < sbi->s_firstdatazone || j >= sbi->s_nzones)
				break;
			return j;
		}
		FUNC5(&bitmap_lock);
	}
	return 0;
}