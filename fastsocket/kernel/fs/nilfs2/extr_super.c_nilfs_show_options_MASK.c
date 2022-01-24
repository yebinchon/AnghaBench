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
struct vfsmount {struct super_block* mnt_sb; } ;
struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct nilfs_sb_info {scalar_t__ s_snapshot_cno; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 int /*<<< orphan*/  ERRORS_PANIC ; 
 int /*<<< orphan*/  ERRORS_RO ; 
 struct nilfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  SNAPSHOT ; 
 int /*<<< orphan*/  STRICT_ORDER ; 
 scalar_t__ FUNC1 (struct nilfs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *seq, struct vfsmount *vfs)
{
	struct super_block *sb = vfs->mnt_sb;
	struct nilfs_sb_info *sbi = FUNC0(sb);

	if (!FUNC1(sbi, BARRIER))
		FUNC2(seq, ",barrier=off");
	if (FUNC1(sbi, SNAPSHOT))
		FUNC2(seq, ",cp=%llu",
			   (unsigned long long int)sbi->s_snapshot_cno);
	if (FUNC1(sbi, ERRORS_RO))
		FUNC2(seq, ",errors=remount-ro");
	if (FUNC1(sbi, ERRORS_PANIC))
		FUNC2(seq, ",errors=panic");
	if (FUNC1(sbi, STRICT_ORDER))
		FUNC2(seq, ",order=strict");

	return 0;
}