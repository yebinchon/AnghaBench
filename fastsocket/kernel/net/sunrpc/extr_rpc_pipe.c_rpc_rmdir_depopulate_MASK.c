#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC0 (struct inode*,struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry,
		void (*depopulate)(struct dentry *))
{
	struct dentry *parent;
	struct inode *dir;
	int error;

	parent = FUNC1(dentry);
	dir = parent->d_inode;
	FUNC3(&dir->i_mutex, I_MUTEX_PARENT);
	if (depopulate != NULL)
		depopulate(dentry);
	error = FUNC0(dir, dentry);
	FUNC4(&dir->i_mutex);
	FUNC2(parent);
	return error;
}