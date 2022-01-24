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
struct ocfs2_super {struct ocfs2_dentry_lock* dentry_lock_list; int /*<<< orphan*/  dentry_lock_work; } ;
struct ocfs2_dentry_lock {struct ocfs2_dentry_lock* dl_next; int /*<<< orphan*/  dl_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_OSB_DROP_DENTRY_LOCK_IMMED ; 
 int /*<<< orphan*/  dentry_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocfs2_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ocfs2_super *osb,
				   struct ocfs2_dentry_lock *dl)
{
	FUNC1(osb, &dl->dl_lockres);
	FUNC0(&dl->dl_lockres);

	/* We leave dropping of inode reference to ocfs2_wq as that can
	 * possibly lead to inode deletion which gets tricky */
	FUNC4(&dentry_list_lock);
	if (!osb->dentry_lock_list &&
	    !FUNC2(osb, OCFS2_OSB_DROP_DENTRY_LOCK_IMMED))
		FUNC3(ocfs2_wq, &osb->dentry_lock_work);
	dl->dl_next = osb->dentry_lock_list;
	osb->dentry_lock_list = dl;
	FUNC5(&dentry_list_lock);
}