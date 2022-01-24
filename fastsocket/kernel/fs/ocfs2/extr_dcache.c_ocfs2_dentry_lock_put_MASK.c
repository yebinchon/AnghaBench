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
struct ocfs2_dentry_lock {scalar_t__ dl_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dentry_attach_lock ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_super*,struct ocfs2_dentry_lock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ocfs2_super *osb,
			   struct ocfs2_dentry_lock *dl)
{
	int unlock;

	FUNC0(dl->dl_count == 0);

	FUNC2(&dentry_attach_lock);
	dl->dl_count--;
	unlock = !dl->dl_count;
	FUNC3(&dentry_attach_lock);

	if (unlock)
		FUNC1(osb, dl);
}