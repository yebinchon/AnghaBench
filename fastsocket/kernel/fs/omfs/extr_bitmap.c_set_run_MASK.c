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
struct omfs_sb_info {unsigned long** s_imap; int /*<<< orphan*/  s_bitmap_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct omfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long*) ; 
 scalar_t__ FUNC3 (struct omfs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb, int map,
		int nbits, int bit, int count, int set)
{
	int i;
	int err;
	struct buffer_head *bh;
	struct omfs_sb_info *sbi = FUNC0(sb);

 	err = -ENOMEM;
	bh = FUNC5(sb, FUNC3(sbi, sbi->s_bitmap_ino) + map);
	if (!bh)
		goto out;

	for (i = 0; i < count; i++, bit++) {
		if (bit >= nbits) {
			bit = 0;
			map++;

			FUNC4(bh);
			FUNC1(bh);
			bh = FUNC5(sb,
				FUNC3(sbi, sbi->s_bitmap_ino) + map);
			if (!bh)
				goto out;
		}
		if (set) {
			FUNC6(bit, sbi->s_imap[map]);
			FUNC6(bit, (unsigned long *)bh->b_data);
		} else {
			FUNC2(bit, sbi->s_imap[map]);
			FUNC2(bit, (unsigned long *)bh->b_data);
		}
	}
	FUNC4(bh);
	FUNC1(bh);
	err = 0;
out:
	return err;
}