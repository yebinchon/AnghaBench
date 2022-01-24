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
struct super_operations {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dqptr_sem; int /*<<< orphan*/  dqonoff_mutex; int /*<<< orphan*/  dqio_mutex; } ;
struct super_block {int s_count; int s_time_gran; struct super_operations const* s_op; int /*<<< orphan*/  s_qcop; int /*<<< orphan*/  dq_op; int /*<<< orphan*/  s_maxbytes; int /*<<< orphan*/  s_wait_unfrozen; TYPE_1__ s_dquot; int /*<<< orphan*/  s_vfs_rename_mutex; int /*<<< orphan*/  s_active; int /*<<< orphan*/  s_umount; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_dentry_lru; int /*<<< orphan*/  s_inodes; int /*<<< orphan*/  s_anon; int /*<<< orphan*/  s_instances; int /*<<< orphan*/  s_files; } ;
struct file_system_type {int /*<<< orphan*/  s_lock_key; int /*<<< orphan*/  s_umount_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_NON_LFS ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct super_block*,struct file_system_type*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 struct super_block* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sb_dquot_ops ; 
 int /*<<< orphan*/  sb_quotactl_ops ; 
 scalar_t__ FUNC12 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*) ; 

__attribute__((used)) static struct super_block *FUNC14(struct file_system_type *type)
{
	struct super_block *s = FUNC9(sizeof(struct super_block),  GFP_USER);
	static const struct super_operations default_op;

	if (s) {
		if (FUNC12(s)) {
			/*
			 * We cannot call security_sb_free() without
			 * security_sb_alloc() succeeding. So bail out manually
			 */
			FUNC8(s);
			s = NULL;
			goto out;
		}
		FUNC1(&s->s_files);
		if (FUNC6(s, type))
			goto err_out;
		FUNC1(&s->s_instances);
		FUNC0(&s->s_anon);
		FUNC1(&s->s_inodes);
		FUNC1(&s->s_dentry_lru);
		FUNC5(&s->s_umount);
		FUNC11(&s->s_lock);
		FUNC10(&s->s_umount, &type->s_umount_key);
		/*
		 * The locking rules for s_lock are up to the
		 * filesystem. For example ext3fs has different
		 * lock ordering than usbfs:
		 */
		FUNC10(&s->s_lock, &type->s_lock_key);
		/*
		 * sget() can have s_umount recursion.
		 *
		 * When it cannot find a suitable sb, it allocates a new
		 * one (this one), and tries again to find a suitable old
		 * one.
		 *
		 * In case that succeeds, it will acquire the s_umount
		 * lock of the old one. Since these are clearly distrinct
		 * locks, and this object isn't exposed yet, there's no
		 * risk of deadlocks.
		 *
		 * Annotate this by putting this lock in a different
		 * subclass.
		 */
		FUNC4(&s->s_umount, SINGLE_DEPTH_NESTING);
		s->s_count = 1;
		FUNC2(&s->s_active, 1);
		FUNC11(&s->s_vfs_rename_mutex);
		FUNC11(&s->s_dquot.dqio_mutex);
		FUNC11(&s->s_dquot.dqonoff_mutex);
		FUNC5(&s->s_dquot.dqptr_sem);
		FUNC7(&s->s_wait_unfrozen);
		s->s_maxbytes = MAX_NON_LFS;
		s->dq_op = sb_dquot_ops;
		s->s_qcop = sb_quotactl_ops;
		s->s_op = &default_op;
		s->s_time_gran = 1000000000;
	}
out:
	return s;
err_out:
	FUNC13(s);
	FUNC3(s);
	FUNC8(s);
	s = NULL;
	goto out;
}