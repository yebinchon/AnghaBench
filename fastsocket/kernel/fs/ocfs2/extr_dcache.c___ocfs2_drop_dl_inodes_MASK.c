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
struct ocfs2_super {struct ocfs2_dentry_lock* dentry_lock_list; } ;
struct ocfs2_dentry_lock {int /*<<< orphan*/  dl_inode; struct ocfs2_dentry_lock* dl_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  dentry_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dentry_lock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ocfs2_super *osb, int drop_count)
{
	struct ocfs2_dentry_lock *dl;

	FUNC2(&dentry_list_lock);
	while (osb->dentry_lock_list && (drop_count < 0 || drop_count--)) {
		dl = osb->dentry_lock_list;
		osb->dentry_lock_list = dl->dl_next;
		FUNC3(&dentry_list_lock);
		FUNC0(dl->dl_inode);
		FUNC1(dl);
		FUNC2(&dentry_list_lock);
	}
	FUNC3(&dentry_list_lock);
}