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
struct super_block {int s_blocksize_bits; } ;
struct minix_sb_info {unsigned long s_ninodes; unsigned long s_imap_blocks; struct buffer_head** s_imap; } ;
struct inode {unsigned long i_ino; struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  bitmap_lock ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct minix_sb_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct inode * inode)
{
	struct super_block *sb = inode->i_sb;
	struct minix_sb_info *sbi = FUNC3(inode->i_sb);
	struct buffer_head *bh;
	int k = sb->s_blocksize_bits + 3;
	unsigned long ino, bit;

	ino = inode->i_ino;
	if (ino < 1 || ino > sbi->s_ninodes) {
		FUNC5("minix_free_inode: inode 0 or nonexistent inode\n");
		goto out;
	}
	bit = ino & ((1<<k) - 1);
	ino >>= k;
	if (ino >= sbi->s_imap_blocks) {
		FUNC5("minix_free_inode: nonexistent imap in superblock\n");
		goto out;
	}

	FUNC2(inode);	/* clear on-disk copy */

	bh = sbi->s_imap[ino];
	FUNC6(&bitmap_lock);
	if (!FUNC4(bit, bh->b_data))
		FUNC5("minix_free_inode: bit %lu already cleared\n", bit);
	FUNC7(&bitmap_lock);
	FUNC1(bh);
 out:
	FUNC0(inode);		/* clear in-memory copy */
}