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
struct ocfs2_super {int max_slots; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int /*<<< orphan*/  JOURNAL_SYSTEM_INODE ; 
 int /*<<< orphan*/  OCFS2_BH_IGNORE_CACHE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct inode* FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct inode*,struct buffer_head**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ocfs2_super *osb,
				    int slot_num,
				    struct buffer_head **bh,
				    struct inode **ret_inode)
{
	int status = -EACCES;
	struct inode *inode = NULL;

	FUNC0(slot_num >= osb->max_slots);

	inode = FUNC5(osb, JOURNAL_SYSTEM_INODE,
					    slot_num);
	if (!inode || FUNC3(inode)) {
		FUNC4(status);
		goto bail;
	}
	FUNC1(inode);

	status = FUNC6(inode, bh, OCFS2_BH_IGNORE_CACHE);
	if (status < 0) {
		FUNC4(status);
		goto bail;
	}

	status = 0;

bail:
	if (inode) {
		if (status || !ret_inode)
			FUNC2(inode);
		else
			*ret_inode = inode;
	}
	return status;
}