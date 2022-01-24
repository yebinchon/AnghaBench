#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {TYPE_2__* d_inode; int /*<<< orphan*/  d_name; } ;
struct TYPE_6__ {struct dentry* proc_dentry; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mutex; TYPE_1__* i_op; } ;
struct TYPE_4__ {struct dentry* (* lookup ) (TYPE_2__*,struct dentry*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC4 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC5 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct dentry* FUNC11 (TYPE_2__*,struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC12(struct inode *ino, struct dentry *dentry,
				   struct nameidata *nd)
{
	struct dentry *proc_dentry, *new, *parent;
	struct inode *inode;
	int err, deleted;

	deleted = FUNC7(dentry, NULL);
	if (deleted < 0)
		return FUNC0(deleted);
	else if (deleted)
		return FUNC0(-ENOENT);

	err = -ENOMEM;
	parent = FUNC1(ino)->proc_dentry;
	FUNC9(&parent->d_inode->i_mutex);
	proc_dentry = FUNC5(parent, &dentry->d_name);
	if (proc_dentry == NULL) {
		proc_dentry = FUNC4(parent, &dentry->d_name);
		if (proc_dentry == NULL) {
			FUNC10(&parent->d_inode->i_mutex);
			goto out;
		}
		new = (*parent->d_inode->i_op->lookup)(parent->d_inode,
						       proc_dentry, NULL);
		if (new) {
			FUNC6(proc_dentry);
			proc_dentry = new;
		}
	}
	FUNC10(&parent->d_inode->i_mutex);

	if (FUNC2(proc_dentry))
		return proc_dentry;

	err = -ENOMEM;
	inode = FUNC8(ino->i_sb, proc_dentry);
	if (!inode)
		goto out_dput;

 	FUNC3(dentry, inode);
	return NULL;

 out_dput:
	FUNC6(proc_dentry);
 out:
	return FUNC0(err);
}