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
struct super_block {int /*<<< orphan*/  s_id; } ;
struct minix_sb_info {int s_ninodes; int s_imap_blocks; int s_zmap_blocks; } ;
struct minix_inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int ino_t ;

/* Variables and functions */
 int MINIX_INODES_PER_BLOCK ; 
 struct minix_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct buffer_head* FUNC2 (struct super_block*,int) ; 

struct minix_inode *
FUNC3(struct super_block *sb, ino_t ino, struct buffer_head **bh)
{
	int block;
	struct minix_sb_info *sbi = FUNC0(sb);
	struct minix_inode *p;

	if (!ino || ino > sbi->s_ninodes) {
		FUNC1("Bad inode number on dev %s: %ld is out of range\n",
		       sb->s_id, (long)ino);
		return NULL;
	}
	ino--;
	block = 2 + sbi->s_imap_blocks + sbi->s_zmap_blocks +
		 ino / MINIX_INODES_PER_BLOCK;
	*bh = FUNC2(sb, block);
	if (!*bh) {
		FUNC1("Unable to read inode block\n");
		return NULL;
	}
	p = (void *)(*bh)->b_data;
	return p + ino % MINIX_INODES_PER_BLOCK;
}