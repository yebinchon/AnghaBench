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
struct ext3_super_block {int /*<<< orphan*/  s_errors; int /*<<< orphan*/  s_def_resgid; int /*<<< orphan*/  s_def_resuid; int /*<<< orphan*/  s_default_mount_opts; } ;
struct ext3_sb_info {int s_sb_block; int s_resuid; int s_resgid; int s_commit_interval; int s_mount_opt; struct ext3_super_block* s_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 int /*<<< orphan*/  DATA_ERR_ABORT ; 
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  ERRORS_CONT ; 
 int /*<<< orphan*/  ERRORS_PANIC ; 
 int /*<<< orphan*/  ERRORS_RO ; 
 unsigned long EXT3_DEFM_ACL ; 
 unsigned long EXT3_DEFM_BSDGROUPS ; 
 unsigned long EXT3_DEFM_XATTR_USER ; 
 int EXT3_DEF_RESGID ; 
 int EXT3_DEF_RESUID ; 
 int EXT3_ERRORS_CONTINUE ; 
 int EXT3_ERRORS_PANIC ; 
 int EXT3_MOUNT_DATA_FLAGS ; 
 struct ext3_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  GRPID ; 
 int HZ ; 
 int /*<<< orphan*/  MINIX_DF ; 
 int /*<<< orphan*/  NOBH ; 
 int /*<<< orphan*/  NO_UID32 ; 
 int /*<<< orphan*/  OLDALLOC ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 int /*<<< orphan*/  RESERVATION ; 
 int /*<<< orphan*/  XATTR_USER ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct super_block*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*) ; 
 scalar_t__ FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct seq_file *seq, struct vfsmount *vfs)
{
	struct super_block *sb = vfs->mnt_sb;
	struct ext3_sb_info *sbi = FUNC0(sb);
	struct ext3_super_block *es = sbi->s_es;
	unsigned long def_mount_opts;

	def_mount_opts = FUNC4(es->s_default_mount_opts);

	if (sbi->s_sb_block != 1)
		FUNC5(seq, ",sb=%lu", sbi->s_sb_block);
	if (FUNC7(sb, MINIX_DF))
		FUNC6(seq, ",minixdf");
	if (FUNC7(sb, GRPID))
		FUNC6(seq, ",grpid");
	if (!FUNC7(sb, GRPID) && (def_mount_opts & EXT3_DEFM_BSDGROUPS))
		FUNC6(seq, ",nogrpid");
	if (sbi->s_resuid != EXT3_DEF_RESUID ||
	    FUNC3(es->s_def_resuid) != EXT3_DEF_RESUID) {
		FUNC5(seq, ",resuid=%u", sbi->s_resuid);
	}
	if (sbi->s_resgid != EXT3_DEF_RESGID ||
	    FUNC3(es->s_def_resgid) != EXT3_DEF_RESGID) {
		FUNC5(seq, ",resgid=%u", sbi->s_resgid);
	}
	if (FUNC7(sb, ERRORS_RO)) {
		int def_errors = FUNC3(es->s_errors);

		if (def_errors == EXT3_ERRORS_PANIC ||
		    def_errors == EXT3_ERRORS_CONTINUE) {
			FUNC6(seq, ",errors=remount-ro");
		}
	}
	if (FUNC7(sb, ERRORS_CONT))
		FUNC6(seq, ",errors=continue");
	if (FUNC7(sb, ERRORS_PANIC))
		FUNC6(seq, ",errors=panic");
	if (FUNC7(sb, NO_UID32))
		FUNC6(seq, ",nouid32");
	if (FUNC7(sb, DEBUG))
		FUNC6(seq, ",debug");
	if (FUNC7(sb, OLDALLOC))
		FUNC6(seq, ",oldalloc");
#ifdef CONFIG_EXT3_FS_XATTR
	if (test_opt(sb, XATTR_USER))
		seq_puts(seq, ",user_xattr");
	if (!test_opt(sb, XATTR_USER) &&
	    (def_mount_opts & EXT3_DEFM_XATTR_USER)) {
		seq_puts(seq, ",nouser_xattr");
	}
#endif
#ifdef CONFIG_EXT3_FS_POSIX_ACL
	if (test_opt(sb, POSIX_ACL))
		seq_puts(seq, ",acl");
	if (!test_opt(sb, POSIX_ACL) && (def_mount_opts & EXT3_DEFM_ACL))
		seq_puts(seq, ",noacl");
#endif
	if (!FUNC7(sb, RESERVATION))
		FUNC6(seq, ",noreservation");
	if (sbi->s_commit_interval) {
		FUNC5(seq, ",commit=%u",
			   (unsigned) (sbi->s_commit_interval / HZ));
	}

	/*
	 * We're changing the default of barrier mount option, so
	 * let's always display its mount state so it's clear what its
	 * status is.
	 */
	FUNC6(seq, ",barrier=");
	FUNC6(seq, FUNC7(sb, BARRIER) ? "1" : "0");
	if (FUNC7(sb, NOBH))
		FUNC6(seq, ",nobh");

	FUNC5(seq, ",data=%s", FUNC1(sbi->s_mount_opt &
						     EXT3_MOUNT_DATA_FLAGS));
	if (FUNC7(sb, DATA_ERR_ABORT))
		FUNC6(seq, ",data_err=abort");

	FUNC2(seq, sb);

	return 0;
}