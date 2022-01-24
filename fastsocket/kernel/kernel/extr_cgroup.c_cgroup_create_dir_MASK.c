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
struct dentry {int /*<<< orphan*/  d_inode; struct cgroup* d_fsdata; } ;
struct cgroup {int /*<<< orphan*/  dentry; TYPE_2__* root; TYPE_1__* parent; } ;
typedef  int mode_t ;
struct TYPE_4__ {int /*<<< orphan*/  sb; } ;
struct TYPE_3__ {struct dentry* dentry; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int FUNC0 (struct dentry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dentry*) ; 

__attribute__((used)) static int FUNC5(struct cgroup *cgrp, struct dentry *dentry,
				mode_t mode)
{
	struct dentry *parent;
	int error = 0;

	parent = cgrp->parent->dentry;
	error = FUNC0(dentry, S_IFDIR | mode, cgrp->root->sb);
	if (!error) {
		dentry->d_fsdata = cgrp;
		FUNC3(parent->d_inode);
		FUNC4(cgrp->dentry, dentry);
		FUNC1(dentry);
	}
	FUNC2(dentry);

	return error;
}