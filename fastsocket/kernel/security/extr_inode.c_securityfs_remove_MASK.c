#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dentry {TYPE_1__* d_inode; struct dentry* d_parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  mount ; 
 int /*<<< orphan*/  mount_count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct dentry*) ; 

void FUNC9(struct dentry *dentry)
{
	struct dentry *parent;

	if (!dentry || FUNC0(dentry))
		return;

	parent = dentry->d_parent;
	if (!parent || !parent->d_inode)
		return;

	FUNC3(&parent->d_inode->i_mutex);
	if (FUNC5(dentry)) {
		if (dentry->d_inode) {
			if (FUNC1(dentry->d_inode->i_mode))
				FUNC7(parent->d_inode, dentry);
			else
				FUNC8(parent->d_inode, dentry);
			FUNC2(dentry);
		}
	}
	FUNC4(&parent->d_inode->i_mutex);
	FUNC6(&mount, &mount_count);
}