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
struct ext4_super_block {int /*<<< orphan*/  s_def_resgid; int /*<<< orphan*/  s_def_resuid; int /*<<< orphan*/  s_errors; int /*<<< orphan*/  s_default_mount_opts; } ;
struct ext4_sb_info {int s_sb_block; int s_resuid; int s_resgid; int s_commit_interval; scalar_t__ s_min_batch_time; scalar_t__ s_max_batch_time; int s_stripe; unsigned int s_inode_readahead_blks; scalar_t__ s_li_wait_mult; struct ext4_super_block* s_es; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 int /*<<< orphan*/  BLOCK_VALIDITY ; 
 int /*<<< orphan*/  DATA_ERR_ABORT ; 
 int /*<<< orphan*/  DATA_FLAGS ; 
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  DELALLOC ; 
 int /*<<< orphan*/  DISCARD ; 
 int /*<<< orphan*/  ERRORS_CONT ; 
 int /*<<< orphan*/  ERRORS_PANIC ; 
 int /*<<< orphan*/  ERRORS_RO ; 
 unsigned long EXT4_DEFM_ACL ; 
 unsigned long EXT4_DEFM_BLOCK_VALIDITY ; 
 unsigned long EXT4_DEFM_BSDGROUPS ; 
 unsigned long EXT4_DEFM_DEBUG ; 
 unsigned long EXT4_DEFM_DISCARD ; 
 unsigned long EXT4_DEFM_NODELALLOC ; 
 unsigned long EXT4_DEFM_UID16 ; 
 unsigned long EXT4_DEFM_XATTR_USER ; 
 unsigned int EXT4_DEF_INODE_READAHEAD_BLKS ; 
 scalar_t__ EXT4_DEF_LI_WAIT_MULT ; 
 scalar_t__ EXT4_DEF_MAX_BATCH_TIME ; 
 scalar_t__ EXT4_DEF_MIN_BATCH_TIME ; 
 int EXT4_DEF_RESGID ; 
 int EXT4_DEF_RESUID ; 
 int EXT4_ERRORS_CONTINUE ; 
 int EXT4_ERRORS_PANIC ; 
 scalar_t__ EXT4_MOUNT_JOURNAL_DATA ; 
 scalar_t__ EXT4_MOUNT_ORDERED_DATA ; 
 scalar_t__ EXT4_MOUNT_WRITEBACK_DATA ; 
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  GRPID ; 
 int HZ ; 
 int /*<<< orphan*/  INIT_INODE_TABLE ; 
 int /*<<< orphan*/  I_VERSION ; 
 int JBD2_DEFAULT_MAX_COMMIT_AGE ; 
 int /*<<< orphan*/  JOURNAL_ASYNC_COMMIT ; 
 int /*<<< orphan*/  MINIX_DF ; 
 int /*<<< orphan*/  NOBH ; 
 int /*<<< orphan*/  NOLOAD ; 
 int /*<<< orphan*/  NO_AUTO_DA_ALLOC ; 
 int /*<<< orphan*/  NO_UID32 ; 
 int /*<<< orphan*/  OLDALLOC ; 
 int /*<<< orphan*/  POSIX_ACL ; 
 int /*<<< orphan*/  XATTR_USER ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 
 scalar_t__ FUNC6 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct seq_file *seq, struct vfsmount *vfs)
{
	int def_errors;
	unsigned long def_mount_opts;
	struct super_block *sb = vfs->mnt_sb;
	struct ext4_sb_info *sbi = FUNC0(sb);
	struct ext4_super_block *es = sbi->s_es;

	def_mount_opts = FUNC3(es->s_default_mount_opts);
	def_errors     = FUNC2(es->s_errors);

	if (sbi->s_sb_block != 1)
		FUNC4(seq, ",sb=%llu", sbi->s_sb_block);
	if (FUNC6(sb, MINIX_DF))
		FUNC5(seq, ",minixdf");
	if (FUNC6(sb, GRPID) && !(def_mount_opts & EXT4_DEFM_BSDGROUPS))
		FUNC5(seq, ",grpid");
	if (!FUNC6(sb, GRPID) && (def_mount_opts & EXT4_DEFM_BSDGROUPS))
		FUNC5(seq, ",nogrpid");
	if (sbi->s_resuid != EXT4_DEF_RESUID ||
	    FUNC2(es->s_def_resuid) != EXT4_DEF_RESUID) {
		FUNC4(seq, ",resuid=%u", sbi->s_resuid);
	}
	if (sbi->s_resgid != EXT4_DEF_RESGID ||
	    FUNC2(es->s_def_resgid) != EXT4_DEF_RESGID) {
		FUNC4(seq, ",resgid=%u", sbi->s_resgid);
	}
	if (FUNC6(sb, ERRORS_RO)) {
		if (def_errors == EXT4_ERRORS_PANIC ||
		    def_errors == EXT4_ERRORS_CONTINUE) {
			FUNC5(seq, ",errors=remount-ro");
		}
	}
	if (FUNC6(sb, ERRORS_CONT) && def_errors != EXT4_ERRORS_CONTINUE)
		FUNC5(seq, ",errors=continue");
	if (FUNC6(sb, ERRORS_PANIC) && def_errors != EXT4_ERRORS_PANIC)
		FUNC5(seq, ",errors=panic");
	if (FUNC6(sb, NO_UID32) && !(def_mount_opts & EXT4_DEFM_UID16))
		FUNC5(seq, ",nouid32");
	if (FUNC6(sb, DEBUG) && !(def_mount_opts & EXT4_DEFM_DEBUG))
		FUNC5(seq, ",debug");
	if (FUNC6(sb, OLDALLOC))
		FUNC5(seq, ",oldalloc");
#ifdef CONFIG_EXT4_FS_XATTR
	if (test_opt(sb, XATTR_USER) &&
		!(def_mount_opts & EXT4_DEFM_XATTR_USER))
		seq_puts(seq, ",user_xattr");
	if (!test_opt(sb, XATTR_USER) &&
	    (def_mount_opts & EXT4_DEFM_XATTR_USER)) {
		seq_puts(seq, ",nouser_xattr");
	}
#endif
#ifdef CONFIG_EXT4_FS_POSIX_ACL
	if (test_opt(sb, POSIX_ACL) && !(def_mount_opts & EXT4_DEFM_ACL))
		seq_puts(seq, ",acl");
	if (!test_opt(sb, POSIX_ACL) && (def_mount_opts & EXT4_DEFM_ACL))
		seq_puts(seq, ",noacl");
#endif
	if (sbi->s_commit_interval != JBD2_DEFAULT_MAX_COMMIT_AGE*HZ) {
		FUNC4(seq, ",commit=%u",
			   (unsigned) (sbi->s_commit_interval / HZ));
	}
	if (sbi->s_min_batch_time != EXT4_DEF_MIN_BATCH_TIME) {
		FUNC4(seq, ",min_batch_time=%u",
			   (unsigned) sbi->s_min_batch_time);
	}
	if (sbi->s_max_batch_time != EXT4_DEF_MAX_BATCH_TIME) {
		FUNC4(seq, ",max_batch_time=%u",
			   (unsigned) sbi->s_min_batch_time);
	}

	/*
	 * We're changing the default of barrier mount option, so
	 * let's always display its mount state so it's clear what its
	 * status is.
	 */
	FUNC5(seq, ",barrier=");
	FUNC5(seq, FUNC6(sb, BARRIER) ? "1" : "0");
	if (FUNC6(sb, JOURNAL_ASYNC_COMMIT))
		FUNC5(seq, ",journal_async_commit");
	if (FUNC6(sb, NOBH))
		FUNC5(seq, ",nobh");
	if (FUNC6(sb, I_VERSION))
		FUNC5(seq, ",i_version");
	if (!FUNC6(sb, DELALLOC) &&
	    !(def_mount_opts & EXT4_DEFM_NODELALLOC))
		FUNC5(seq, ",nodelalloc");

	if (sbi->s_stripe)
		FUNC4(seq, ",stripe=%lu", sbi->s_stripe);
	/*
	 * journal mode get enabled in different ways
	 * So just print the value even if we didn't specify it
	 */
	if (FUNC6(sb, DATA_FLAGS) == EXT4_MOUNT_JOURNAL_DATA)
		FUNC5(seq, ",data=journal");
	else if (FUNC6(sb, DATA_FLAGS) == EXT4_MOUNT_ORDERED_DATA)
		FUNC5(seq, ",data=ordered");
	else if (FUNC6(sb, DATA_FLAGS) == EXT4_MOUNT_WRITEBACK_DATA)
		FUNC5(seq, ",data=writeback");

	if (sbi->s_inode_readahead_blks != EXT4_DEF_INODE_READAHEAD_BLKS)
		FUNC4(seq, ",inode_readahead_blks=%u",
			   sbi->s_inode_readahead_blks);

	if (FUNC6(sb, DATA_ERR_ABORT))
		FUNC5(seq, ",data_err=abort");

	if (FUNC6(sb, NO_AUTO_DA_ALLOC))
		FUNC5(seq, ",noauto_da_alloc");

	if (FUNC6(sb, DISCARD) && !(def_mount_opts & EXT4_DEFM_DISCARD))
		FUNC5(seq, ",discard");

	if (FUNC6(sb, NOLOAD))
		FUNC5(seq, ",norecovery");

	if (FUNC6(sb, BLOCK_VALIDITY) &&
	    !(def_mount_opts & EXT4_DEFM_BLOCK_VALIDITY))
		FUNC5(seq, ",block_validity");

	if (!FUNC6(sb, INIT_INODE_TABLE))
		FUNC5(seq, ",noinit_itable");
	else if (sbi->s_li_wait_mult != EXT4_DEF_LI_WAIT_MULT)
		FUNC4(seq, ",init_itable=%u",
			   (unsigned) sbi->s_li_wait_mult);

	FUNC1(seq, sb);

	return 0;
}