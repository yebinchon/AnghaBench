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
typedef  scalar_t__ sysv_ino_t ;
struct sysv_sb_info {int /*<<< orphan*/  s_sb_total_free_inodes; scalar_t__* s_sb_fic_count; } ;
struct super_block {int dummy; } ;
struct inode {int i_mode; scalar_t__ i_blocks; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; void* i_ino; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_gid; struct super_block* i_sb; } ;
typedef  int mode_t ;
struct TYPE_2__ {scalar_t__ i_dir_start_lookup; int /*<<< orphan*/  i_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct sysv_sb_info* FUNC2 (struct super_block*) ; 
 scalar_t__ FUNC3 (int) ; 
 int S_ISGID ; 
 scalar_t__ FUNC4 (struct sysv_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct sysv_sb_info*,int /*<<< orphan*/ ,int) ; 
 void* FUNC9 (struct sysv_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC15 (struct super_block*) ; 
 unsigned int FUNC16 (struct super_block*) ; 
 scalar_t__* FUNC17 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*) ; 

struct inode * FUNC20(const struct inode * dir, mode_t mode)
{
	struct super_block *sb = dir->i_sb;
	struct sysv_sb_info *sbi = FUNC2(sb);
	struct inode *inode;
	sysv_ino_t ino;
	unsigned count;

	inode = FUNC15(sb);
	if (!inode)
		return FUNC0(-ENOMEM);

	FUNC12(sb);
	count = FUNC9(sbi, *sbi->s_sb_fic_count);
	if (count == 0 || (*FUNC17(sb,count-1) == 0)) {
		count = FUNC16(sb);
		if (count == 0) {
			FUNC11(inode);
			FUNC19(sb);
			return FUNC0(-ENOSPC);
		}
	}
	/* Now count > 0. */
	ino = *FUNC17(sb,--count);
	*sbi->s_sb_fic_count = FUNC4(sbi, count);
	FUNC8(sbi, sbi->s_sb_total_free_inodes, -1);
	FUNC7(sb);
	
	if (dir->i_mode & S_ISGID) {
		inode->i_gid = dir->i_gid;
		if (FUNC3(mode))
			mode |= S_ISGID;
	} else
		inode->i_gid = FUNC5();

	inode->i_uid = FUNC6();
	inode->i_ino = FUNC9(sbi, ino);
	inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME_SEC;
	inode->i_blocks = 0;
	FUNC14(FUNC1(inode)->i_data, 0, sizeof(FUNC1(inode)->i_data));
	FUNC1(inode)->i_dir_start_lookup = 0;
	FUNC10(inode);
	FUNC13(inode);

	inode->i_mode = mode;		/* for sysv_write_inode() */
	FUNC18(inode, 0);	/* ensure inode not allocated again */
	FUNC13(inode);	/* cleared by sysv_write_inode() */
	/* That's it. */
	FUNC19(sb);
	return inode;
}