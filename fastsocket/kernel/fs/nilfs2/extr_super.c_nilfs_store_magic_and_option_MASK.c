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
struct super_block {int /*<<< orphan*/  s_flags; void* s_magic; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_c_block_max; int /*<<< orphan*/  s_c_interval; int /*<<< orphan*/  s_def_resgid; int /*<<< orphan*/  s_def_resuid; int /*<<< orphan*/  s_magic; } ;
struct nilfs_sb_info {void* s_watermark; void* s_interval; void* s_resgid; void* s_resuid; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MS_NOATIME ; 
 struct nilfs_sb_info* FUNC0 (struct super_block*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nilfs_sb_info*,struct nilfs_super_block*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct super_block*) ; 

int FUNC5(struct super_block *sb,
				 struct nilfs_super_block *sbp,
				 char *data)
{
	struct nilfs_sb_info *sbi = FUNC0(sb);

	sb->s_magic = FUNC1(sbp->s_magic);

	/* FS independent flags */
#ifdef NILFS_ATIME_DISABLE
	sb->s_flags |= MS_NOATIME;
#endif

	FUNC3(sbi, sbp);

	sbi->s_resuid = FUNC1(sbp->s_def_resuid);
	sbi->s_resgid = FUNC1(sbp->s_def_resgid);
	sbi->s_interval = FUNC2(sbp->s_c_interval);
	sbi->s_watermark = FUNC2(sbp->s_c_block_max);

	return !FUNC4(data, sb) ? -EINVAL : 0 ;
}