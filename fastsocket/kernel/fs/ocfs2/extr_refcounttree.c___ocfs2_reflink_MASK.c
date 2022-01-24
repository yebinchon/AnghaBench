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
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mutex; } ;
struct dentry {struct inode* d_inode; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int ip_dyn_features; } ;

/* Variables and functions */
 int OCFS2_HAS_XATTR_FL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct buffer_head*) ; 
 int FUNC8 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*,int) ; 
 int FUNC9 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*,int) ; 
 int FUNC10 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int FUNC12 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*,int) ; 

__attribute__((used)) static int FUNC13(struct dentry *old_dentry,
			   struct buffer_head *old_bh,
			   struct inode *new_inode,
			   bool preserve)
{
	int ret;
	struct inode *inode = old_dentry->d_inode;
	struct buffer_head *new_bh = NULL;

	ret = FUNC3(inode->i_mapping);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	ret = FUNC7(inode, old_bh);
	if (ret) {
		FUNC4(ret);
		goto out;
	}

	FUNC5(&new_inode->i_mutex);
	ret = FUNC10(new_inode, &new_bh, 1);
	if (ret) {
		FUNC4(ret);
		goto out_unlock;
	}

	ret = FUNC9(inode, old_bh,
					new_inode, new_bh, preserve);
	if (ret) {
		FUNC4(ret);
		goto inode_unlock;
	}

	if (FUNC0(inode)->ip_dyn_features & OCFS2_HAS_XATTR_FL) {
		ret = FUNC12(inode, old_bh,
					   new_inode, new_bh,
					   preserve);
		if (ret) {
			FUNC4(ret);
			goto inode_unlock;
		}
	}

	ret = FUNC8(inode, old_bh,
				     new_inode, new_bh, preserve);
	if (ret)
		FUNC4(ret);

inode_unlock:
	FUNC11(new_inode, 1);
	FUNC1(new_bh);
out_unlock:
	FUNC6(&new_inode->i_mutex);
out:
	if (!ret) {
		ret = FUNC2(inode->i_mapping);
		if (ret)
			FUNC4(ret);
	}
	return ret;
}