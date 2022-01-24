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
struct ocfs2_super {struct inode* osb_tl_inode; int /*<<< orphan*/  osb_tl_bh; int /*<<< orphan*/  osb_truncate_log_wq; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  ocfs2_wq ; 

void FUNC8(struct ocfs2_super *osb)
{
	int status;
	struct inode *tl_inode = osb->osb_tl_inode;

	FUNC4();

	if (tl_inode) {
		FUNC1(&osb->osb_truncate_log_wq);
		FUNC2(ocfs2_wq);

		status = FUNC7(osb);
		if (status < 0)
			FUNC5(status);

		FUNC0(osb->osb_tl_bh);
		FUNC3(osb->osb_tl_inode);
	}

	FUNC6();
}