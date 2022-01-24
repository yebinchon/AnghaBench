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
struct super_block {int dummy; } ;
struct ocfs2_super {int /*<<< orphan*/  dentry_lock_work; int /*<<< orphan*/  vol_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_OSB_DROP_DENTRY_LOCK_IMMED ; 
 struct ocfs2_super* FUNC0 (struct super_block*) ; 
 scalar_t__ VOLUME_DISABLED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dentry_list_lock ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct super_block *sb)
{
	struct ocfs2_super *osb = FUNC0(sb);

	/* Failed mount? */
	if (!osb || FUNC1(&osb->vol_state) == VOLUME_DISABLED)
		goto out;

	/* Prevent further queueing of inode drop events */
	FUNC5(&dentry_list_lock);
	FUNC4(osb, OCFS2_OSB_DROP_DENTRY_LOCK_IMMED);
	FUNC6(&dentry_list_lock);
	/* Wait for work to finish and/or remove it */
	FUNC2(&osb->dentry_lock_work);
out:
	FUNC3(sb);
}