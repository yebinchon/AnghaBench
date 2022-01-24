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
struct sysv_sb_info {int s_ninodes; int s_inodes_per_block_1; int /*<<< orphan*/ * s_sb_total_free_inodes; } ;
struct sysv_inode {scalar_t__ i_mode; scalar_t__ i_nlink; } ;
struct super_block {int s_flags; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 int SYSV_ROOT_INO ; 
 struct sysv_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysv_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int FUNC4 (struct sysv_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 struct sysv_inode* FUNC7 (struct super_block*,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 

unsigned long FUNC9(struct super_block * sb)
{
	struct sysv_sb_info *sbi = FUNC0(sb);
	struct buffer_head * bh;
	struct sysv_inode * raw_inode;
	int ino, count, sb_count;

	FUNC5(sb);

	sb_count = FUNC4(sbi, *sbi->s_sb_total_free_inodes);

	if (0)
		goto trust_sb;

	/* this causes a lot of disk traffic ... */
	count = 0;
	ino = SYSV_ROOT_INO+1;
	raw_inode = FUNC7(sb, ino, &bh);
	if (!raw_inode)
		goto Eio;
	while (ino <= sbi->s_ninodes) {
		if (raw_inode->i_mode == 0 && raw_inode->i_nlink == 0)
			count++;
		if ((ino++ & sbi->s_inodes_per_block_1) == 0) {
			FUNC1(bh);
			raw_inode = FUNC7(sb, ino, &bh);
			if (!raw_inode)
				goto Eio;
		} else
			raw_inode++;
	}
	FUNC1(bh);
	if (count != sb_count)
		goto Einval;
out:
	FUNC8(sb);
	return count;

Einval:
	FUNC6("sysv_count_free_inodes: "
		"free inode count was %d, correcting to %d\n",
		sb_count, count);
	if (!(sb->s_flags & MS_RDONLY)) {
		*sbi->s_sb_total_free_inodes = FUNC2(FUNC0(sb), count);
		FUNC3(sb);
	}
	goto out;

Eio:
	FUNC6("sysv_count_free_inodes: unable to read inode table\n");
trust_sb:
	count = sb_count;
	goto out;
}