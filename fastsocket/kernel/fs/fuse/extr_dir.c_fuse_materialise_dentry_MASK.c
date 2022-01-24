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
struct fuse_conn {int /*<<< orphan*/  inst_mutex; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (struct dentry*,struct inode*) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC5(struct dentry *dentry,
					      struct inode *inode)
{
	struct dentry *newent;

	if (inode && FUNC0(inode->i_mode)) {
		struct fuse_conn *fc = FUNC2(inode);

		FUNC3(&fc->inst_mutex);
		newent = FUNC1(dentry, inode);
		FUNC4(&fc->inst_mutex);
	} else {
		newent = FUNC1(dentry, inode);
	}

	return newent;
}