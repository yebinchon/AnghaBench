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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct buffer_head* FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC9(struct inode *old_dir, struct dentry *old_dentry,
		struct inode *new_dir, struct dentry *new_dentry)
{
	struct inode *new_inode = new_dentry->d_inode;
	struct inode *old_inode = old_dentry->d_inode;
	struct buffer_head *bh;
	int is_dir;
	int err;

	is_dir = FUNC1(old_inode->i_mode);

	if (new_inode) {
		/* overwriting existing file/dir */
		err = -ENOTEMPTY;
		if (is_dir && !FUNC6(new_inode))
			goto out;

		err = -ENOENT;
		bh = FUNC7(new_dir, new_dentry->d_name.name,
			new_dentry->d_name.len);
		if (FUNC0(bh))
			goto out;
		FUNC2(bh);

		err = FUNC8(new_dir, new_dentry);
		if (err)
			goto out;
	}

	/* since omfs locates files by name, we need to unlink _before_
	 * adding the new link or we won't find the old one */
	FUNC4(old_inode);
	err = FUNC8(old_dir, old_dentry);
	if (err) {
		FUNC3(old_inode);
		goto out;
	}

	err = FUNC5(new_dentry, old_inode);
	if (err)
		goto out;

	old_inode->i_ctime = CURRENT_TIME_SEC;
out:
	return err;
}