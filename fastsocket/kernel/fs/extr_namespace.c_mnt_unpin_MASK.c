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
struct vfsmount {scalar_t__ mnt_pinned; int /*<<< orphan*/  mnt_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

void FUNC3(struct vfsmount *mnt)
{
	FUNC1(&vfsmount_lock);
	if (mnt->mnt_pinned) {
		FUNC0(&mnt->mnt_count);
		mnt->mnt_pinned--;
	}
	FUNC2(&vfsmount_lock);
}