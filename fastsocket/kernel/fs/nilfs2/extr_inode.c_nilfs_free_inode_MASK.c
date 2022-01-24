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
struct nilfs_sb_info {int /*<<< orphan*/  s_inodes_count; int /*<<< orphan*/  s_ifile; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;

/* Variables and functions */
 struct nilfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct nilfs_sb_info *sbi = FUNC0(sb);

	FUNC2(inode);
	/* XXX: check error code? Is there any thing I can do? */
	(void) FUNC3(sbi->s_ifile, inode->i_ino);
	FUNC1(&sbi->s_inodes_count);
}