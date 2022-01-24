#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_9__ {int /*<<< orphan*/  i_nlink; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 TYPE_6__* FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct dentry*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int FUNC12 (struct dentry*,TYPE_1__*,struct dentry*) ; 

__attribute__((used)) static int FUNC13(struct dentry *old_dentry, struct inode *dir,
			 struct dentry *new_dentry)
{
	struct dentry *lower_old_dentry;
	struct dentry *lower_new_dentry;
	struct dentry *lower_dir_dentry;
	u64 file_size_save;
	int rc;

	file_size_save = FUNC8(old_dentry->d_inode);
	lower_old_dentry = FUNC3(old_dentry);
	lower_new_dentry = FUNC3(new_dentry);
	FUNC1(lower_old_dentry);
	FUNC1(lower_new_dentry);
	lower_dir_dentry = FUNC10(lower_new_dentry);
	rc = FUNC12(lower_old_dentry, lower_dir_dentry->d_inode,
		      lower_new_dentry);
	if (rc || !lower_new_dentry->d_inode)
		goto out_lock;
	rc = FUNC5(lower_new_dentry, new_dentry, dir->i_sb, 0);
	if (rc)
		goto out_lock;
	FUNC6(dir, lower_new_dentry->d_inode);
	FUNC7(dir, lower_new_dentry->d_inode);
	old_dentry->d_inode->i_nlink =
		FUNC4(old_dentry->d_inode)->i_nlink;
	FUNC9(new_dentry->d_inode, file_size_save);
out_lock:
	FUNC11(lower_dir_dentry);
	FUNC2(lower_new_dentry);
	FUNC2(lower_old_dentry);
	FUNC0(lower_old_dentry);
	FUNC0(new_dentry);
	FUNC0(old_dentry);
	return rc;
}