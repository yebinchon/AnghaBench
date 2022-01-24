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
struct super_block {int s_flags; scalar_t__ s_dirt; } ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_super_block {int dummy; } ;
struct reiserfs_journal {unsigned int j_max_commit_age; unsigned int j_max_trans_age; unsigned int j_default_max_commit_age; int j_errno; int j_must_wait; } ;
typedef  int /*<<< orphan*/  qf_names ;
struct TYPE_2__ {unsigned long s_mount_opt; char** s_qf_names; scalar_t__ s_mount_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int JOURNAL_MAX_TRANS_AGE ; 
 int MAXQUOTAS ; 
 int MS_RDONLY ; 
 int REISERFS_ATTRS ; 
 int REISERFS_BARRIER_FLUSH ; 
 int REISERFS_BARRIER_NONE ; 
 int REISERFS_ERROR_CONTINUE ; 
 scalar_t__ REISERFS_ERROR_FS ; 
 int REISERFS_ERROR_PANIC ; 
 int REISERFS_ERROR_RO ; 
 int REISERFS_HASHED_RELOCATION ; 
 int REISERFS_LARGETAIL ; 
 int REISERFS_NO_BORDER ; 
 int REISERFS_NO_UNHASHED_RELOCATION ; 
 int REISERFS_POSIXACL ; 
 int REISERFS_QUOTA ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int REISERFS_SMALLTAIL ; 
 int REISERFS_TEST4 ; 
 scalar_t__ REISERFS_VALID_FS ; 
 int REISERFS_XATTRS_USER ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 struct reiserfs_super_block* FUNC2 (struct super_block*) ; 
 struct reiserfs_journal* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char**,unsigned int*) ; 
 int FUNC9 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int FUNC10 (struct reiserfs_transaction_handle*,struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_transaction_handle*,struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char**,char**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*) ; 
 scalar_t__ FUNC17 (struct reiserfs_journal*) ; 
 int /*<<< orphan*/  FUNC18 (struct super_block*,char*,unsigned long*,unsigned long*,int /*<<< orphan*/ *,unsigned int*,char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct super_block*,char*) ; 
 scalar_t__ FUNC23 (struct reiserfs_super_block*) ; 
 scalar_t__ FUNC24 (struct reiserfs_super_block*) ; 
 int /*<<< orphan*/  FUNC25 (struct reiserfs_super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (struct reiserfs_super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 () ; 

__attribute__((used)) static int FUNC28(struct super_block *s, int *mount_flags, char *arg)
{
	struct reiserfs_super_block *rs;
	struct reiserfs_transaction_handle th;
	unsigned long blocks;
	unsigned long mount_options = FUNC0(s)->s_mount_opt;
	unsigned long safe_mask = 0;
	unsigned int commit_max_age = (unsigned int)-1;
	struct reiserfs_journal *journal = FUNC3(s);
	char *new_opts = FUNC13(arg, GFP_KERNEL);
	int err;
	char *qf_names[MAXQUOTAS];
	unsigned int qfmt = 0;
#ifdef CONFIG_QUOTA
	int i;

	memcpy(qf_names, REISERFS_SB(s)->s_qf_names, sizeof(qf_names));
#endif

	FUNC14();
	rs = FUNC2(s);

	if (!FUNC18
	    (s, arg, &mount_options, &blocks, NULL, &commit_max_age,
	    qf_names, &qfmt)) {
#ifdef CONFIG_QUOTA
		for (i = 0; i < MAXQUOTAS; i++)
			if (qf_names[i] != REISERFS_SB(s)->s_qf_names[i])
				kfree(qf_names[i]);
#endif
		err = -EINVAL;
		goto out_err;
	}
#ifdef CONFIG_QUOTA
	handle_quota_files(s, qf_names, &qfmt);
#endif

	FUNC5(s);

	/* Add options that are safe here */
	safe_mask |= 1 << REISERFS_SMALLTAIL;
	safe_mask |= 1 << REISERFS_LARGETAIL;
	safe_mask |= 1 << REISERFS_NO_BORDER;
	safe_mask |= 1 << REISERFS_NO_UNHASHED_RELOCATION;
	safe_mask |= 1 << REISERFS_HASHED_RELOCATION;
	safe_mask |= 1 << REISERFS_TEST4;
	safe_mask |= 1 << REISERFS_ATTRS;
	safe_mask |= 1 << REISERFS_XATTRS_USER;
	safe_mask |= 1 << REISERFS_POSIXACL;
	safe_mask |= 1 << REISERFS_BARRIER_FLUSH;
	safe_mask |= 1 << REISERFS_BARRIER_NONE;
	safe_mask |= 1 << REISERFS_ERROR_RO;
	safe_mask |= 1 << REISERFS_ERROR_CONTINUE;
	safe_mask |= 1 << REISERFS_ERROR_PANIC;
	safe_mask |= 1 << REISERFS_QUOTA;

	/* Update the bitmask, taking care to keep
	 * the bits we're not allowed to change here */
	FUNC0(s)->s_mount_opt =
	    (FUNC0(s)->
	     s_mount_opt & ~safe_mask) | (mount_options & safe_mask);

	if (commit_max_age != 0 && commit_max_age != (unsigned int)-1) {
		journal->j_max_commit_age = commit_max_age;
		journal->j_max_trans_age = commit_max_age;
	} else if (commit_max_age == 0) {
		/* 0 means restore defaults. */
		journal->j_max_commit_age = journal->j_default_max_commit_age;
		journal->j_max_trans_age = JOURNAL_MAX_TRANS_AGE;
	}

	if (blocks) {
		err = FUNC20(s, blocks);
		if (err != 0)
			goto out_err;
	}

	if (*mount_flags & MS_RDONLY) {
		FUNC21(s, *mount_flags);
		/* remount read-only */
		if (s->s_flags & MS_RDONLY)
			/* it is read-only already */
			goto out_ok;
		/* try to remount file system with read-only permissions */
		if (FUNC24(rs) == REISERFS_VALID_FS
		    || FUNC0(s)->s_mount_state != REISERFS_VALID_FS) {
			goto out_ok;
		}

		err = FUNC9(&th, s, 10);
		if (err)
			goto out_err;

		/* Mounting a rw partition read-only. */
		FUNC19(s, FUNC1(s), 1);
		FUNC26(rs, FUNC0(s)->s_mount_state);
		FUNC11(&th, s, FUNC1(s));
	} else {
		/* remount read-write */
		if (!(s->s_flags & MS_RDONLY)) {
			FUNC21(s, *mount_flags);
			goto out_ok;	/* We are read-write already */
		}

		if (FUNC17(journal)) {
			err = journal->j_errno;
			goto out_err;
		}

		FUNC7(s, mount_options);
		FUNC6(s, mount_options);
		FUNC0(s)->s_mount_state = FUNC24(rs);
		s->s_flags &= ~MS_RDONLY;	/* now it is safe to call journal_begin */
		err = FUNC9(&th, s, 10);
		if (err)
			goto out_err;

		/* Mount a partition which is read-only, read-write */
		FUNC19(s, FUNC1(s), 1);
		FUNC0(s)->s_mount_state = FUNC24(rs);
		s->s_flags &= ~MS_RDONLY;
		FUNC26(rs, REISERFS_ERROR_FS);
		if (!FUNC16(s))
			FUNC25(rs, FUNC23(rs) + 1);
		/* mark_buffer_dirty (SB_BUFFER_WITH_SB (s), 1); */
		FUNC11(&th, s, FUNC1(s));
		FUNC0(s)->s_mount_state = REISERFS_VALID_FS;
	}
	/* this will force a full flush of all journal lists */
	FUNC3(s)->j_must_wait = 1;
	err = FUNC10(&th, s, 10);
	if (err)
		goto out_err;
	s->s_dirt = 0;

	if (!(*mount_flags & MS_RDONLY)) {
		FUNC4(s);
		FUNC21(s, *mount_flags);
	}

out_ok:
	FUNC22(s, new_opts);
	FUNC27();
	return 0;

out_err:
	FUNC12(new_opts);
	FUNC27();
	return err;
}