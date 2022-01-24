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
 int /*<<< orphan*/  FUNC0 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

void FUNC7(struct vfsmount *mnt)
{
repeat:
	if (FUNC3(&mnt->mnt_count, &vfsmount_lock)) {
		if (FUNC4(!mnt->mnt_pinned)) {
			FUNC6(&vfsmount_lock);
			FUNC0(mnt);
			return;
		}
		FUNC2(mnt->mnt_pinned + 1, &mnt->mnt_count);
		mnt->mnt_pinned = 0;
		FUNC6(&vfsmount_lock);
		FUNC1(mnt);
		FUNC5(mnt);
		goto repeat;
	}
}