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
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct dentry*) ; 

__attribute__((used)) static void FUNC7 (struct dentry *dentry)
{
	struct dentry *parent = dentry->d_parent;
	
	if (!parent || !parent->d_inode)
		return;

	FUNC2(&parent->d_inode->i_mutex, I_MUTEX_PARENT);
	if (FUNC4(dentry)) {
		if (dentry->d_inode) {
			if (FUNC0(dentry->d_inode->i_mode))
				FUNC5(parent->d_inode, dentry);
			else
				FUNC6(parent->d_inode, dentry);
		FUNC1(dentry);
		}
	}
	FUNC3(&parent->d_inode->i_mutex);
}