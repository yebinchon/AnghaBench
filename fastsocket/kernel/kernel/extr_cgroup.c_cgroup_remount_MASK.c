#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {struct cgroupfs_root* s_fs_info; } ;
struct cgroup {TYPE_2__* dentry; } ;
struct cgroupfs_root {scalar_t__ flags; int /*<<< orphan*/  release_agent_path; int /*<<< orphan*/  name; struct cgroup top_cgroup; } ;
struct cgroup_sb_opts {scalar_t__ flags; scalar_t__ name; scalar_t__ release_agent; int /*<<< orphan*/  subsys_bits; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  cgroup_root_mutex ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,struct cgroup_sb_opts*) ; 
 int FUNC6 (struct cgroupfs_root*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct super_block *sb, int *flags, char *data)
{
	int ret = 0;
	struct cgroupfs_root *root = sb->s_fs_info;
	struct cgroup *cgrp = &root->top_cgroup;
	struct cgroup_sb_opts opts;

	FUNC2();
	FUNC3(&cgrp->dentry->d_inode->i_mutex);
	FUNC3(&cgroup_mutex);
	FUNC3(&cgroup_root_mutex);

	/* See what subsystems are wanted */
	ret = FUNC5(data, &opts);
	if (ret)
		goto out_unlock;

	/* Don't allow flags to change at remount */
	if (opts.flags != root->flags) {
		ret = -EINVAL;
		goto out_unlock;
	}

	/* Don't allow name to change at remount */
	if (opts.name && FUNC7(opts.name, root->name)) {
		ret = -EINVAL;
		goto out_unlock;
	}

	ret = FUNC6(root, opts.subsys_bits);
	if (ret)
		goto out_unlock;

	/* (re)populate subsystem files */
	FUNC0(cgrp);

	if (opts.release_agent)
		FUNC8(root->release_agent_path, opts.release_agent);
 out_unlock:
	FUNC1(opts.release_agent);
	FUNC1(opts.name);
	FUNC4(&cgroup_root_mutex);
	FUNC4(&cgroup_mutex);
	FUNC4(&cgrp->dentry->d_inode->i_mutex);
	FUNC9();
	return ret;
}