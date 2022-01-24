#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_2__* dq_op; int /*<<< orphan*/  s_bdev; TYPE_1__* s_op; } ;
struct quota_info {int flags; int /*<<< orphan*/  dqonoff_mutex; int /*<<< orphan*/  dqptr_sem; int /*<<< orphan*/ ** files; int /*<<< orphan*/  dqio_mutex; TYPE_4__** ops; TYPE_3__* info; } ;
struct quota_format_type {TYPE_4__* qf_ops; } ;
struct inode {int i_flags; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct TYPE_8__ {int (* read_file_info ) (struct super_block*,int) ;int /*<<< orphan*/  (* check_quota_file ) (struct super_block*,int) ;} ;
struct TYPE_7__ {int dqi_fmt_id; int /*<<< orphan*/  dqi_dirty_list; struct quota_format_type* dqi_format; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* drop ) (struct inode*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  quota_read; int /*<<< orphan*/  quota_write; } ;

/* Variables and functions */
 int DQUOT_QUOTA_SYS_FILE ; 
 unsigned int DQUOT_USAGE_ENABLED ; 
 int EACCES ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int EROFS ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  I_MUTEX_QUOTA ; 
 int S_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int S_NOATIME ; 
 int S_NOQUOTA ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dq_state_lock ; 
 int FUNC5 (unsigned int,int) ; 
 struct quota_format_type* FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct quota_format_type*) ; 
 struct quota_info* FUNC14 (struct super_block*) ; 
 scalar_t__ FUNC15 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*,int) ; 
 int FUNC20 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int) ; 

__attribute__((used)) static int FUNC23(struct inode *inode, int type, int format_id,
	unsigned int flags)
{
	struct quota_format_type *fmt = FUNC6(format_id);
	struct super_block *sb = inode->i_sb;
	struct quota_info *dqopt = FUNC14(sb);
	int error;
	int oldflags = -1;

	if (!fmt)
		return -ESRCH;
	if (!FUNC2(inode->i_mode)) {
		error = -EACCES;
		goto out_fmt;
	}
	if (FUNC1(inode)) {
		error = -EROFS;
		goto out_fmt;
	}
	if (!sb->s_op->quota_write || !sb->s_op->quota_read) {
		error = -EINVAL;
		goto out_fmt;
	}
	/* Usage always has to be set... */
	if (!(flags & DQUOT_USAGE_ENABLED)) {
		error = -EINVAL;
		goto out_fmt;
	}

	if (!(dqopt->flags & DQUOT_QUOTA_SYS_FILE)) {
		/* As we bypass the pagecache we must now flush the inode so
		 * that we see all the changes from userspace... */
		FUNC22(inode, 1);
		/* And now flush the block cache so that kernel sees the
		 * changes */
		FUNC8(sb->s_bdev);
	}
	FUNC10(&dqopt->dqonoff_mutex);
	if (FUNC15(sb, type)) {
		error = -EBUSY;
		goto out_lock;
	}

	if (!(dqopt->flags & DQUOT_QUOTA_SYS_FILE)) {
		/* We don't want quota and atime on quota files (deadlocks
		 * possible) Also nobody should write to the file - we use
		 * special IO operations which ignore the immutable bit. */
		FUNC4(&dqopt->dqptr_sem);
		FUNC11(&inode->i_mutex, I_MUTEX_QUOTA);
		oldflags = inode->i_flags & (S_NOATIME | S_IMMUTABLE |
					     S_NOQUOTA);
		inode->i_flags |= S_NOQUOTA | S_NOATIME | S_IMMUTABLE;
		FUNC12(&inode->i_mutex);
		FUNC21(&dqopt->dqptr_sem);
		sb->dq_op->drop(inode);
	}

	error = -EIO;
	dqopt->files[type] = FUNC7(inode);
	if (!dqopt->files[type])
		goto out_lock;
	error = -EINVAL;
	if (!fmt->qf_ops->check_quota_file(sb, type))
		goto out_file_init;

	dqopt->ops[type] = fmt->qf_ops;
	dqopt->info[type].dqi_format = fmt;
	dqopt->info[type].dqi_fmt_id = format_id;
	FUNC0(&dqopt->info[type].dqi_dirty_list);
	FUNC10(&dqopt->dqio_mutex);
	error = dqopt->ops[type]->read_file_info(sb, type);
	if (error < 0) {
		FUNC12(&dqopt->dqio_mutex);
		goto out_file_init;
	}
	FUNC12(&dqopt->dqio_mutex);
	FUNC16(&dq_state_lock);
	dqopt->flags |= FUNC5(flags, type);
	FUNC17(&dq_state_lock);

	FUNC3(sb, type);
	FUNC12(&dqopt->dqonoff_mutex);

	return 0;

out_file_init:
	dqopt->files[type] = NULL;
	FUNC9(inode);
out_lock:
	if (oldflags != -1) {
		FUNC4(&dqopt->dqptr_sem);
		FUNC11(&inode->i_mutex, I_MUTEX_QUOTA);
		/* Set the flags back (in the case of accidental quotaon()
		 * on a wrong file we don't want to mess up the flags) */
		inode->i_flags &= ~(S_NOATIME | S_NOQUOTA | S_IMMUTABLE);
		inode->i_flags |= oldflags;
		FUNC12(&inode->i_mutex);
		FUNC21(&dqopt->dqptr_sem);
	}
	FUNC12(&dqopt->dqonoff_mutex);
out_fmt:
	FUNC13(fmt);

	return error; 
}