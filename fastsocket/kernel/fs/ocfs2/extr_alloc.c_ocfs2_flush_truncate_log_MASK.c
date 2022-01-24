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
struct ocfs2_super {struct inode* osb_tl_inode; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int FUNC0 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct ocfs2_super *osb)
{
	int status;
	struct inode *tl_inode = osb->osb_tl_inode;

	FUNC1(&tl_inode->i_mutex);
	status = FUNC0(osb);
	FUNC2(&tl_inode->i_mutex);

	return status;
}