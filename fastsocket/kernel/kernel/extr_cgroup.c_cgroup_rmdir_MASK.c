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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_lock; struct cgroup* d_fsdata; } ;
struct cgroup {int /*<<< orphan*/  flags; TYPE_1__* dentry; int /*<<< orphan*/  root; int /*<<< orphan*/  sibling; int /*<<< orphan*/  release_list; int /*<<< orphan*/  children; int /*<<< orphan*/  count; struct cgroup* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGRP_RELEASABLE ; 
 int /*<<< orphan*/  CGRP_REMOVED ; 
 int /*<<< orphan*/  CGRP_WAIT_ON_RMDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINTR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  cgroup_rmdir_waitq ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 struct dentry* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  release_list_lock ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC23(struct inode *unused_dir, struct dentry *dentry)
{
	struct cgroup *cgrp = dentry->d_fsdata;
	struct dentry *d;
	struct cgroup *parent;
	FUNC0(wait);
	int ret;

	/* the vfs holds both inode->i_mutex already */
again:
	FUNC14(&cgroup_mutex);
	if (FUNC1(&cgrp->count) != 0) {
		FUNC15(&cgroup_mutex);
		return -EBUSY;
	}
	if (!FUNC13(&cgrp->children)) {
		FUNC15(&cgroup_mutex);
		return -EBUSY;
	}
	FUNC15(&cgroup_mutex);

	/*
	 * In general, subsystem has no css->refcnt after pre_destroy(). But
	 * in racy cases, subsystem may have to get css->refcnt after
	 * pre_destroy() and it makes rmdir return with -EBUSY. This sometimes
	 * make rmdir return -EBUSY too often. To avoid that, we use waitqueue
	 * for cgroup's rmdir. CGRP_WAIT_ON_RMDIR is for synchronizing rmdir
	 * and subsystem's reference count handling. Please see css_get/put
	 * and css_tryget() and cgroup_wakeup_rmdir_waiter() implementation.
	 */
	FUNC18(CGRP_WAIT_ON_RMDIR, &cgrp->flags);

	/*
	 * Call pre_destroy handlers of subsys. Notify subsystems
	 * that rmdir() request comes.
	 */
	ret = FUNC2(cgrp);
	if (ret) {
		FUNC8(CGRP_WAIT_ON_RMDIR, &cgrp->flags);
		return ret;
	}

	FUNC14(&cgroup_mutex);
	parent = cgrp->parent;
	if (FUNC1(&cgrp->count) || !FUNC13(&cgrp->children)) {
		FUNC8(CGRP_WAIT_ON_RMDIR, &cgrp->flags);
		FUNC15(&cgroup_mutex);
		return -EBUSY;
	}
	FUNC16(&cgroup_rmdir_waitq, &wait, TASK_INTERRUPTIBLE);
	if (!FUNC3(cgrp)) {
		FUNC15(&cgroup_mutex);
		/*
		 * Because someone may call cgroup_wakeup_rmdir_waiter() before
		 * prepare_to_wait(), we need to check this flag.
		 */
		if (FUNC22(CGRP_WAIT_ON_RMDIR, &cgrp->flags))
			FUNC17();
		FUNC11(&cgroup_rmdir_waitq, &wait);
		FUNC8(CGRP_WAIT_ON_RMDIR, &cgrp->flags);
		if (FUNC19(current))
			return -EINTR;
		goto again;
	}
	/* NO css_tryget() can success after here. */
	FUNC11(&cgroup_rmdir_waitq, &wait);
	FUNC8(CGRP_WAIT_ON_RMDIR, &cgrp->flags);

	FUNC20(&release_list_lock);
	FUNC18(CGRP_REMOVED, &cgrp->flags);
	if (!FUNC13(&cgrp->release_list))
		FUNC12(&cgrp->release_list);
	FUNC21(&release_list_lock);

	FUNC5(cgrp->root);
	/* delete this cgroup from parent->children */
	FUNC12(&cgrp->sibling);
	FUNC6(cgrp->root);

	FUNC20(&cgrp->dentry->d_lock);
	d = FUNC9(cgrp->dentry);
	FUNC21(&d->d_lock);

	FUNC4(d);
	FUNC10(d);

	FUNC18(CGRP_RELEASABLE, &parent->flags);
	FUNC7(parent);

	FUNC15(&cgroup_mutex);
	return 0;
}