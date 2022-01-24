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
struct ext2_super_block {int /*<<< orphan*/  s_errors; int /*<<< orphan*/  s_def_resgid; int /*<<< orphan*/  s_def_resuid; int /*<<< orphan*/  s_default_mount_opts; } ;
struct ext2_sb_info {int s_sb_block; int s_resuid; int s_resgid; int s_mount_opt; struct ext2_super_block* s_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  ERRORS_CONT ; 
 int /*<<< orphan*/  ERRORS_PANIC ; 
 int /*<<< orphan*/  ERRORS_RO ; 
 unsigned long EXT2_DEFM_ACL ; 
 unsigned long EXT2_DEFM_BSDGROUPS ; 
 unsigned long EXT2_DEFM_XATTR_USER ; 
 int EXT2_DEF_RESGID ; 
 int EXT2_DEF_RESUID ; 
 int EXT2_ERRORS_CONTINUE ; 
 int EXT2_ERRORS_PANIC ; 
 int EXT2_MOUNT_GRPQUOTA ; 
 int EXT2_MOUNT_USRQUOTA ; 
 int EXT2_MOUNT_XIP ; 
 struct ext2_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  GRPID ; 
 int /*<<< orphan*/  MINIX_DF ; 
 int /*<<< orphan*/  NOBH ; 
 int /*<<< orphan*/  NO_UID32 ; 
 int /*<<< orphan*/  OLDALLOC ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 int /*<<< orphan*/  RESERVATION ; 
 int /*<<< orphan*/  XATTR_USER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 
 scalar_t__ FUNC5 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct seq_file *seq, struct vfsmount *vfs)
{
	struct super_block *sb = vfs->mnt_sb;
	struct ext2_sb_info *sbi = FUNC0(sb);
	struct ext2_super_block *es = sbi->s_es;
	unsigned long def_mount_opts;

	def_mount_opts = FUNC2(es->s_default_mount_opts);

	if (sbi->s_sb_block != 1)
		FUNC3(seq, ",sb=%lu", sbi->s_sb_block);
	if (FUNC5(sb, MINIX_DF))
		FUNC4(seq, ",minixdf");
	if (FUNC5(sb, GRPID))
		FUNC4(seq, ",grpid");
	if (!FUNC5(sb, GRPID) && (def_mount_opts & EXT2_DEFM_BSDGROUPS))
		FUNC4(seq, ",nogrpid");
	if (sbi->s_resuid != EXT2_DEF_RESUID ||
	    FUNC1(es->s_def_resuid) != EXT2_DEF_RESUID) {
		FUNC3(seq, ",resuid=%u", sbi->s_resuid);
	}
	if (sbi->s_resgid != EXT2_DEF_RESGID ||
	    FUNC1(es->s_def_resgid) != EXT2_DEF_RESGID) {
		FUNC3(seq, ",resgid=%u", sbi->s_resgid);
	}
	if (FUNC5(sb, ERRORS_RO)) {
		int def_errors = FUNC1(es->s_errors);

		if (def_errors == EXT2_ERRORS_PANIC ||
		    def_errors == EXT2_ERRORS_CONTINUE) {
			FUNC4(seq, ",errors=remount-ro");
		}
	}
	if (FUNC5(sb, ERRORS_CONT))
		FUNC4(seq, ",errors=continue");
	if (FUNC5(sb, ERRORS_PANIC))
		FUNC4(seq, ",errors=panic");
	if (FUNC5(sb, NO_UID32))
		FUNC4(seq, ",nouid32");
	if (FUNC5(sb, DEBUG))
		FUNC4(seq, ",debug");
	if (FUNC5(sb, OLDALLOC))
		FUNC4(seq, ",oldalloc");

#ifdef CONFIG_EXT2_FS_XATTR
	if (test_opt(sb, XATTR_USER))
		seq_puts(seq, ",user_xattr");
	if (!test_opt(sb, XATTR_USER) &&
	    (def_mount_opts & EXT2_DEFM_XATTR_USER)) {
		seq_puts(seq, ",nouser_xattr");
	}
#endif

#ifdef CONFIG_EXT2_FS_POSIX_ACL
	if (test_opt(sb, POSIX_ACL))
		seq_puts(seq, ",acl");
	if (!test_opt(sb, POSIX_ACL) && (def_mount_opts & EXT2_DEFM_ACL))
		seq_puts(seq, ",noacl");
#endif

	if (FUNC5(sb, NOBH))
		FUNC4(seq, ",nobh");

#if defined(CONFIG_QUOTA)
	if (sbi->s_mount_opt & EXT2_MOUNT_USRQUOTA)
		seq_puts(seq, ",usrquota");

	if (sbi->s_mount_opt & EXT2_MOUNT_GRPQUOTA)
		seq_puts(seq, ",grpquota");
#endif

#if defined(CONFIG_EXT2_FS_XIP)
	if (sbi->s_mount_opt & EXT2_MOUNT_XIP)
		seq_puts(seq, ",xip");
#endif

	if (!FUNC5(sb, RESERVATION))
		FUNC4(seq, ",noreservation");

	return 0;
}