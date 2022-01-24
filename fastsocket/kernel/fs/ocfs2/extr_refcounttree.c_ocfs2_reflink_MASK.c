#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_xattr_sem; int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dentry*,struct buffer_head*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,struct inode**) ; 
 int FUNC8 (struct inode*,struct inode*) ; 
 int FUNC9 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int) ; 
 int FUNC11 (struct inode*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct dentry *old_dentry, struct inode *dir,
			 struct dentry *new_dentry, bool preserve)
{
	int error;
	struct inode *inode = old_dentry->d_inode;
	struct buffer_head *old_bh = NULL;
	struct inode *new_orphan_inode = NULL;

	if (!FUNC13(FUNC1(inode->i_sb)))
		return -EOPNOTSUPP;

	error = FUNC7(dir, inode->i_mode,
					     &new_orphan_inode);
	if (error) {
		FUNC6(error);
		goto out;
	}

	error = FUNC9(inode, &old_bh, 1);
	if (error) {
		FUNC6(error);
		goto out;
	}

	FUNC4(&FUNC0(inode)->ip_xattr_sem);
	FUNC4(&FUNC0(inode)->ip_alloc_sem);
	error = FUNC2(old_dentry, old_bh,
				new_orphan_inode, preserve);
	FUNC14(&FUNC0(inode)->ip_alloc_sem);
	FUNC14(&FUNC0(inode)->ip_xattr_sem);

	FUNC10(inode, 1);
	FUNC3(old_bh);

	if (error) {
		FUNC6(error);
		goto out;
	}

	/* If the security isn't preserved, we need to re-initialize them. */
	if (!preserve) {
		error = FUNC8(dir, new_orphan_inode);
		if (error)
			FUNC6(error);
	}
out:
	if (!error) {
		error = FUNC11(dir, new_orphan_inode,
						       new_dentry);
		if (error)
			FUNC6(error);
	}

	if (new_orphan_inode) {
		/*
		 * We need to open_unlock the inode no matter whether we
		 * succeed or not, so that other nodes can delete it later.
		 */
		FUNC12(new_orphan_inode);
		if (error)
			FUNC5(new_orphan_inode);
	}

	return error;
}