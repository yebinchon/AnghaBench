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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  dcache_lock ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct dentry *FUNC10(struct inode *inode, struct dentry *dentry)
{
	struct dentry *new = NULL;

	if (inode && FUNC0(inode->i_mode)) {
		FUNC8(&dcache_lock);
		new = FUNC2(inode, dentry->d_parent);
		if (new) {
			FUNC9(&dcache_lock);
			FUNC7(new, inode);
			FUNC5(dentry);
			FUNC4(new, dentry);
			FUNC6(inode);
		} else {
			/* already taking dcache_lock, so d_add() by hand */
			FUNC1(dentry, inode);
			FUNC9(&dcache_lock);
			FUNC7(dentry, inode);
			FUNC5(dentry);
		}
	} else
		FUNC3(dentry, inode);
	return new;
}