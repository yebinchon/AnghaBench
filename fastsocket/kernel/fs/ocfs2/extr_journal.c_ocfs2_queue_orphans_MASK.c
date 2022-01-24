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
struct ocfs2_super {int dummy; } ;
struct ocfs2_orphan_filldir_priv {struct inode* head; struct ocfs2_super* osb; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ORPHAN_DIR_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *,struct ocfs2_orphan_filldir_priv*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_orphan_filldir ; 

__attribute__((used)) static int FUNC8(struct ocfs2_super *osb,
			       int slot,
			       struct inode **head)
{
	int status;
	struct inode *orphan_dir_inode = NULL;
	struct ocfs2_orphan_filldir_priv priv;
	loff_t pos = 0;

	priv.osb = osb;
	priv.head = *head;

	orphan_dir_inode = FUNC5(osb,
						       ORPHAN_DIR_SYSTEM_INODE,
						       slot);
	if  (!orphan_dir_inode) {
		status = -ENOENT;
		FUNC1(status);
		return status;
	}	

	FUNC2(&orphan_dir_inode->i_mutex);
	status = FUNC6(orphan_dir_inode, NULL, 0);
	if (status < 0) {
		FUNC1(status);
		goto out;
	}

	status = FUNC4(orphan_dir_inode, &pos, &priv,
				   ocfs2_orphan_filldir);
	if (status) {
		FUNC1(status);
		goto out_cluster;
	}

	*head = priv.head;

out_cluster:
	FUNC7(orphan_dir_inode, 0);
out:
	FUNC3(&orphan_dir_inode->i_mutex);
	FUNC0(orphan_dir_inode);
	return status;
}