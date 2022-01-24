#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_sb; } ;
struct TYPE_7__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {int d_flags; scalar_t__ d_inode; int /*<<< orphan*/ * d_op; TYPE_1__ d_name; } ;
struct autofs_sb_info {int /*<<< orphan*/  catatonic; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_8__ {int /*<<< orphan*/  signal; } ;
struct TYPE_9__ {TYPE_2__ pending; } ;

/* Variables and functions */
 int DCACHE_AUTOFS_PENDING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ERESTARTNOINTR ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NAME_MAX ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  autofs_dentry_operations ; 
 int FUNC2 (struct autofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct autofs_sb_info* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static struct dentry *FUNC16(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	struct autofs_sb_info *sbi;
	int oz_mode;

	FUNC0(("autofs_root_lookup: name = "));
	FUNC8();
	FUNC4(dentry->d_name.name,dentry->d_name.len);

	if (dentry->d_name.len > NAME_MAX) {
		FUNC15();
		return FUNC1(-ENAMETOOLONG);/* File name too long to exist */
	}

	sbi = FUNC5(dir->i_sb);

	oz_mode = FUNC2(sbi);
	FUNC0(("autofs_lookup: pid = %u, pgrp = %u, catatonic = %d, "
				"oz_mode = %d\n", FUNC14(current),
				FUNC13(current), sbi->catatonic,
				oz_mode));

	/*
	 * Mark the dentry incomplete, but add it. This is needed so
	 * that the VFS layer knows about the dentry, and we can count
	 * on catching any lookups through the revalidate.
	 *
	 * Let all the hard work be done by the revalidate function that
	 * needs to be able to do this anyway..
	 *
	 * We need to do this before we release the directory semaphore.
	 */
	dentry->d_op = &autofs_dentry_operations;
	dentry->d_flags |= DCACHE_AUTOFS_PENDING;
	FUNC6(dentry, NULL);

	FUNC10(&dir->i_mutex);
	FUNC3(dentry, nd);
	FUNC9(&dir->i_mutex);

	/*
	 * If we are still pending, check if we had to handle
	 * a signal. If so we can force a restart..
	 */
	if (dentry->d_flags & DCACHE_AUTOFS_PENDING) {
		/* See if we were interrupted */
		if (FUNC12(current)) {
			sigset_t *sigset = &current->pending.signal;
			if (FUNC11 (sigset, SIGKILL) ||
			    FUNC11 (sigset, SIGQUIT) ||
			    FUNC11 (sigset, SIGINT)) {
				FUNC15();
				return FUNC1(-ERESTARTNOINTR);
			}
		}
	}
	FUNC15();

	/*
	 * If this dentry is unhashed, then we shouldn't honour this
	 * lookup even if the dentry is positive.  Returning ENOENT here
	 * doesn't do the right thing for all system calls, but it should
	 * be OK for the operations we permit from an autofs.
	 */
	if (dentry->d_inode && FUNC7(dentry))
		return FUNC1(-ENOENT);

	return NULL;
}