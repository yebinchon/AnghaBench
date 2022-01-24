#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {struct autofs_info* d_fsdata; int /*<<< orphan*/  d_parent; int /*<<< orphan*/ * d_op; TYPE_1__ d_name; } ;
struct autofs_sb_info {int /*<<< orphan*/  type; int /*<<< orphan*/  catatonic; } ;
struct autofs_info {struct dentry* dentry; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ NAME_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  autofs4_dentry_operations ; 
 struct autofs_info* FUNC5 (int /*<<< orphan*/ *,struct autofs_sb_info*,int) ; 
 struct dentry* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static struct dentry *FUNC12(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	struct autofs_sb_info *sbi;
	struct autofs_info *ino;
	struct dentry *active;

	FUNC0("name = %.*s", dentry->d_name.len, dentry->d_name.name);

	/* File name too long to exist */
	if (dentry->d_name.len > NAME_MAX)
		return FUNC1(-ENAMETOOLONG);

	sbi = FUNC8(dir->i_sb);

	FUNC0("pid = %u, pgrp = %u, catatonic = %d",
		 current->pid, FUNC11(current), sbi->catatonic);

	active = FUNC6(dentry);
	if (active)
		return active;
	else {
		dentry->d_op = &autofs4_dentry_operations;

		/*
		 * A dentry that is not within the root can never trigger
		 * a mount operation, so we can return fail immediately.
		 * The daemon however does need to create directories
		 * within the file system.
		 */
		if (!FUNC7(sbi) && !FUNC2(dentry->d_parent))
			return FUNC1(-ENOENT);

		/* Mark entries in the root as mount triggers */
		if (FUNC9(sbi->type) && FUNC2(dentry->d_parent))
			FUNC3(dentry);

		ino = FUNC5(NULL, sbi, 0555);
		if (!ino)
			return FUNC1(-ENOMEM);

		dentry->d_fsdata = ino;
		ino->dentry = dentry;

		FUNC4(dentry);

		FUNC10(dentry, NULL);
	}

	return NULL;
}